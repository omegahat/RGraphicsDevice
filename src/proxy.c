#include "RGraphicsDevice.h"

void setRMethods(RDevDescMethods *dev, SEXP methods);
 
void
R_activate ( const pDevDesc r1 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r1->deviceSpecific))->activate == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, ((RDevDescMethods*) ( r1->deviceSpecific))->activate ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_circle ( double r1, double r2, double r3, const pGEcontext r4, pDevDesc r5 )
{
    SEXP e, p, r_ans;
    
    if( ((RDevDescMethods*) ( r5->deviceSpecific))->circle == NULL) return ;

#ifdef USE_R_EXPRESSIONS
    e = ((RDevDescMethods*) ( r5->deviceSpecific))->circle;
    p = CDR(e);
    REAL(CAR(p))[0] = r1; p = CDR(p);
    REAL(CAR(p))[0] = r2; p = CDR(p);
    REAL(CAR(p))[0] = r3; p = CDR(p);
    R_SetExternalPtrAddr(GET_SLOT(CAR(p), Rf_install("ref")), r4); p = CDR(p);
    R_SetExternalPtrAddr(GET_SLOT(CAR(p), Rf_install("ref")), r5); p = CDR(p);
#else    
      PROTECT(p = e = allocVector(LANGSXP, 6 ));
      SETCAR(p, ((RDevDescMethods*) ( r5->deviceSpecific))->circle ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r3 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r4 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
#endif
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));

#ifndef USE_R_EXPRESSIONS
    UNPROTECT(2);
#endif

    return  ;
}

void
R_clip ( double r1, double r2, double r3, double r4, pDevDesc r5 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r5->deviceSpecific))->clip == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 6 ));
      SETCAR(p, ((RDevDescMethods*) ( r5->deviceSpecific))->clip ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r3 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r4 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_close ( pDevDesc r1 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r1->deviceSpecific))->close == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, ((RDevDescMethods*) ( r1->deviceSpecific))->close ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_deactivate ( pDevDesc r1 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r1->deviceSpecific))->deactivate == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, ((RDevDescMethods*) ( r1->deviceSpecific))->deactivate ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

Rboolean
R_locator ( double * r1, double * r2, pDevDesc r3 )
{
    SEXP e, p, r_ans;
    Rboolean ans = 0;
    
    
    if( ((RDevDescMethods*) ( r3->deviceSpecific))->locator == NULL) return(ans) ;
    
      PROTECT(p = e = allocVector(LANGSXP, 4 ));
      SETCAR(p, ((RDevDescMethods*) ( r3->deviceSpecific))->locator ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    ans = DEREF_REF( r_ans ,  Rboolean );
    UNPROTECT(2);
    return (ans) ;
}

void
R_line ( double r1, double r2, double r3, double r4, const pGEcontext r5, pDevDesc r6 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r6->deviceSpecific))->line == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 7 ));
      SETCAR(p, ((RDevDescMethods*) ( r6->deviceSpecific))->line ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r3 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r4 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r6 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_metricInfo ( int r1, const pGEcontext r2, double * r3, double * r4, double * r5, pDevDesc r6 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r6->deviceSpecific))->metricInfo == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 7 ));
      SETCAR(p, ((RDevDescMethods*) ( r6->deviceSpecific))->metricInfo ); p = CDR(p);
    
    SETCAR(p, ScalarInteger( r1 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r4 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r6 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_mode ( int r1, pDevDesc r2 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r2->deviceSpecific))->mode == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 3 ));
      SETCAR(p, ((RDevDescMethods*) ( r2->deviceSpecific))->mode ); p = CDR(p);
    
    SETCAR(p, ScalarInteger( r1 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_newPage ( const pGEcontext r1, pDevDesc r2 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r2->deviceSpecific))->newPage == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 3 ));
      SETCAR(p, ((RDevDescMethods*) ( r2->deviceSpecific))->newPage ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_polygon ( int r1, double * r2, double * r3, const pGEcontext r4, pDevDesc r5 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r5->deviceSpecific))->polygon == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 6 ));
      SETCAR(p, ((RDevDescMethods*) ( r5->deviceSpecific))->polygon ); p = CDR(p);
    
    SETCAR(p, ScalarInteger( r1 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r4 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_polyline ( int r1, double * r2, double * r3, const pGEcontext r4, pDevDesc r5 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r5->deviceSpecific))->polyline == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 6 ));
      SETCAR(p, ((RDevDescMethods*) ( r5->deviceSpecific))->polyline ); p = CDR(p);
    
    SETCAR(p, ScalarInteger( r1 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r4 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_rect ( double r1, double r2, double r3, double r4, const pGEcontext r5, pDevDesc r6 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r6->deviceSpecific))->rect == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 7 ));
      SETCAR(p, ((RDevDescMethods*) ( r6->deviceSpecific))->rect ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r3 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r4 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r6 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_size ( double * r1, double * r2, double * r3, double * r4, pDevDesc r5 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r5->deviceSpecific))->size == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 6 ));
      SETCAR(p, ((RDevDescMethods*) ( r5->deviceSpecific))->size ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r4 ,  "doublePtr" , "doublePtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r5 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

double
R_strWidth ( const char * r1, const pGEcontext r2, pDevDesc r3 )
{
    SEXP e, p, r_ans;
    double ans = 0.0;
    
    
    if( ((RDevDescMethods*) ( r3->deviceSpecific))->strWidth == NULL) return(ans) ;
    
      PROTECT(p = e = allocVector(LANGSXP, 4 ));
      SETCAR(p, ((RDevDescMethods*) ( r3->deviceSpecific))->strWidth ); p = CDR(p);
    
    SETCAR(p, mkString(r1) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    ans = ( double ) asReal( r_ans );
    UNPROTECT(2);
    return (ans) ;
}

void
R_text ( double r1, double r2, const char * r3, double r4, double r5, const pGEcontext r6, pDevDesc r7 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r7->deviceSpecific))->text == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 8 ));
      SETCAR(p, ((RDevDescMethods*) ( r7->deviceSpecific))->text ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, mkString(r3) ); p = CDR(p);
    SETCAR(p, ScalarReal( r4 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r5 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r6 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r7 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

void
R_onExit ( pDevDesc r1 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r1->deviceSpecific))->onExit == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, ((RDevDescMethods*) ( r1->deviceSpecific))->onExit ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

Rboolean
R_newFrameConfirm ( pDevDesc r1 )
{
    SEXP e, p, r_ans;
    Rboolean ans = 0;
    
    
    if( ((RDevDescMethods*) ( r1->deviceSpecific))->newFrameConfirm == NULL) return(ans) ;
    
      PROTECT(p = e = allocVector(LANGSXP, 2 ));
      SETCAR(p, ((RDevDescMethods*) ( r1->deviceSpecific))->newFrameConfirm ); p = CDR(p);
    
    SETCAR(p, R_createNativeReference( (void *)  r1 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    ans = LOGICAL(r_ans)[0];
    UNPROTECT(2);
    return (ans) ;
}

void
R_textUTF8 ( double r1, double r2, const char * r3, double r4, double r5, const pGEcontext r6, pDevDesc r7 )
{
    SEXP e, p, r_ans;
    
    
    if( ((RDevDescMethods*) ( r7->deviceSpecific))->textUTF8 == NULL) return ;
    
      PROTECT(p = e = allocVector(LANGSXP, 8 ));
      SETCAR(p, ((RDevDescMethods*) ( r7->deviceSpecific))->textUTF8 ); p = CDR(p);
    
    SETCAR(p, ScalarReal( r1 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r2 ) ); p = CDR(p);
    SETCAR(p, mkString(r3) ); p = CDR(p);
    SETCAR(p, ScalarReal( r4 ) ); p = CDR(p);
    SETCAR(p, ScalarReal( r5 ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r6 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r7 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    UNPROTECT(2);
    return  ;
}

double
R_strWidthUTF8 ( const char * r1, const pGEcontext r2, pDevDesc r3 )
{
    SEXP e, p, r_ans;
    double ans = 0.;
    
    
    if( ((RDevDescMethods*) ( r3->deviceSpecific))->strWidthUTF8 == NULL) return(ans) ;
    
      PROTECT(p = e = allocVector(LANGSXP, 4 ));
      SETCAR(p, ((RDevDescMethods*) ( r3->deviceSpecific))->strWidthUTF8 ); p = CDR(p);
    
    SETCAR(p, mkString(r1) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r2 ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ); p = CDR(p);
    SETCAR(p, R_createNativeReference( (void *)  r3 ,  "DevDescPtr" , "DevDescPtr" ) ); p = CDR(p);
    
    PROTECT(r_ans = Rf_eval(e, R_GlobalEnv));
    ans = ( double ) asReal( r_ans );
    UNPROTECT(2);
    return (ans) ;
}





