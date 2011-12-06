#include <Rinternals.h>
#include <R_ext/GraphicsEngine.h>
#include <R_ext/GraphicsDevice.h>

#include <RConverters.h>

#include <stdlib.h>

static void R_initDevice ( SEXP fun, pDevDesc r1 );

int initializeDevDescMethods(pDevDesc dev, SEXP);
SEXP
R_createGraphicsDevice(SEXP methods, SEXP devName, SEXP dim,
		       SEXP col, SEXP fill, SEXP ps, SEXP initFuns,
                       SEXP ipr)
{
    pGEDevDesc gdd;
    SEXP ans;
    const char * name;

    name = CHAR(STRING_ELT(devName, 0));

    R_GE_checkVersionOrDie(R_GE_version);
    R_CheckDeviceAvailable();
    BEGIN_SUSPEND_INTERRUPTS {
	pDevDesc dev;
	unsigned int tmp;
	/* Allocate and initialize the device driver data */
	if (!(dev = (pDevDesc) calloc(1, sizeof(DevDesc)))) return ScalarLogical(FALSE);

	dev->canHAdj = 0;

	if(!initializeDevDescMethods(dev, methods)) return(ScalarLogical(FALSE));

	if(Rf_length(dim) > 1) {
	    dev->right = INTEGER(dim)[0];
	    dev->bottom = INTEGER(dim)[1];
	}

	dev->startcol = (int) REAL(col)[0];
	dev->startfill = REAL(fill)[0] ; /*R_GE_str2col("yellow")*/
	dev->startps = INTEGER(ps)[0];
	dev->ipr[0] = REAL(ipr)[0];
	dev->ipr[1] = REAL(ipr)[1];


	R_initDevice(VECTOR_ELT(initFuns, 0), dev); /* Was before GEcreateDevDesc*/

	gdd = GEcreateDevDesc(dev);
	GEaddDevice2(gdd, name);
	if(Rf_length(initFuns) > 1)
   	    R_initDevice(VECTOR_ELT(initFuns, 1), dev); /* Was before GEcreateDevDesc*/
	PROTECT(ans = R_createNativeReference( (void *) dev,  "DevDescPtr" , "DevDescPtr" ));
    } END_SUSPEND_INTERRUPTS;

    UNPROTECT(1);
    return(ans);
}

SEXP
R_col2name(SEXP r_val)
{
    const char *val;
    SEXP ans;
    int len = Rf_length(r_val), i;
    PROTECT(ans = NEW_CHARACTER(len));
    for(i = 0; i < len; i++) {
      unsigned int tmp;
      tmp = (unsigned int) ((int) REAL(r_val)[i]);
	val = col2name(tmp);
        SET_STRING_ELT(ans, i, mkChar(val ? val : "")); 
    }
    UNPROTECT(1);
    return(ans);
}

SEXP
R_str2col(SEXP r_val)
{
    SEXP ans;
    int len = Rf_length(r_val), i;
    PROTECT(ans = NEW_NUMERIC(len));
    for(i = 0; i < len; i++) {
	unsigned int ival;
	int tmp;
	tmp = R_GE_str2col(CHAR(STRING_ELT(r_val, i)));
	ival = R_GE_str2col(CHAR(STRING_ELT(r_val, i)));
        REAL(ans)[i] = ival;
    }
    UNPROTECT(1);
    return(ans);
}



void
R_initDevice (SEXP fun, const pDevDesc r1 )
{
    SEXP e, p, r_ans;
    
    
    if( fun == NULL || fun == R_NilValue) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, fun ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}
