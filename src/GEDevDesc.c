#include <Rinternals.h>
#include <R_ext/GraphicsEngine.h>
#include <R_ext/GraphicsDevice.h>
#include <RConverters.h> 


SEXP
R_desc2GEDesc(SEXP r_obj)
{
    DevDesc *obj ;
    pGEDevDesc ge;
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    ge = desc2GEDesc(obj);
    if(!ge)
	return(R_NilValue);

    if(!ge || ge->dev != obj) {
/*
	PROBLEM "GEDevDesc doesn't seem to match the DevDesc, so returning NULL"
	    WARN;
*/
	return(R_NilValue);
    }
    return(R_createNativeReference( (void *) ge,  "GEDevDescPtr" , "GEDevDescPtr" ));    
}

SEXP
R_GEDevDescPtr_set_ask(SEXP r_obj, SEXP value)
{
    pGEDevDesc obj ;
    obj = ( pGEDevDesc )  R_getNativeReference(r_obj, "GEDevDesc", NULL) ;
    if(!obj) {
	PROBLEM "null value provided for GEDevDesc" 
	    ERROR;
    }
    obj->ask = LOGICAL(value)[0];
    return(R_NilValue);
}


SEXP
R_GEDevDescPtr_set_recordGraphics(SEXP r_obj, SEXP value)
{
    pGEDevDesc obj ;
    obj = ( pGEDevDesc )  R_getNativeReference(r_obj, "GEDevDesc", NULL) ;
    if(!obj) {
	PROBLEM "null value provided for GEDevDesc" 
	    ERROR;
    }
    obj->recordGraphics = LOGICAL(value)[0];
    return(R_NilValue);
}



SEXP
R_GEDevDescPtr_get_ask(SEXP r_obj)
{
    pGEDevDesc obj ;
    obj = ( pGEDevDesc )  R_getNativeReference(r_obj, "GEDevDesc", NULL) ;
    if(!obj) {
	PROBLEM "null value provided for GEDevDesc" 
	    ERROR;
    }
    return(ScalarLogical(obj->ask));
}

SEXP
R_GEDevDescPtr_get_recordGraphics(SEXP r_obj)
{
    pGEDevDesc obj ;
    obj = ( pGEDevDesc )  R_getNativeReference(r_obj, "GEDevDesc", NULL) ;
    if(!obj) {
	PROBLEM "null value provided for GEDevDesc" 
	    ERROR;
    }
    return(ScalarLogical(obj->recordGraphics));
}
