#include "RGraphicsDevice.h"

SEXP
createCircleCall(SEXP fun)
{

    SEXP e, p, r_ans;
    
    PROTECT(p = e = allocVector(LANGSXP, 6 ));
    SETCAR(p, fun ); p = CDR(p);
    
    SETCAR(p, ScalarReal( 0 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( 0 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( 0 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  NULL ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  NULL ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);

    UNPROTECT(1);
    return(e);
}
