#include "RGraphicsDevice.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_R_GE_gcontext ( const R_GE_gcontext *value)
{
    SEXP r_ans = R_NilValue, klass;
    klass = MAKE_CLASS("R_GE_gcontext");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class R_GE_gcontext "
        ERROR;
    }
    

    PROTECT(klass);
    PROTECT(r_ans = NEW(klass));

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("col"), ScalarInteger( value -> col ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("fill"), ScalarInteger( value -> fill ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("gamma"), ScalarReal( value -> gamma ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("lwd"), ScalarReal( value -> lwd ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("lty"), ScalarInteger( value -> lty ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("lend"), ScalarInteger( value -> lend ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ljoin"), ScalarInteger( value -> ljoin ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("lmitre"), ScalarReal( value -> lmitre ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("cex"), ScalarReal( value -> cex ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ps"), ScalarReal( value -> ps ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("lineheight"), ScalarReal( value -> lineheight ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("fontface"), ScalarInteger( value -> fontface ) ));
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("fontfamily"), ScalarString(mkChar(value->fontfamily))));
    UNPROTECT( 15 );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_col (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> col ) : R_createNativeReference( (void *)  &( obj -> col ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_fill (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> fill ) : R_createNativeReference( (void *)  &( obj -> fill ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_gamma (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> gamma ) : R_createNativeReference( (void *)  &( obj -> gamma ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_lwd (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> lwd ) : R_createNativeReference( (void *)  &( obj -> lwd ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_lty (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> lty ) : R_createNativeReference( (void *)  &( obj -> lty ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_lend (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> lend ) : R_createNativeReference( (void *)  &( obj -> lend ) ,  "R_GE_lineendPtr" , "R_GE_lineendPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_ljoin (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> ljoin ) : R_createNativeReference( (void *)  &( obj -> ljoin ) ,  "R_GE_linejoinPtr" , "R_GE_linejoinPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_lmitre (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> lmitre ) : R_createNativeReference( (void *)  &( obj -> lmitre ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_cex (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> cex ) : R_createNativeReference( (void *)  &( obj -> cex ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_ps (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> ps ) : R_createNativeReference( (void *)  &( obj -> ps ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_lineheight (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> lineheight ) : R_createNativeReference( (void *)  &( obj -> lineheight ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_fontface (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> fontface ) : R_createNativeReference( (void *)  &( obj -> fontface ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_get_fontfamily (SEXP r_obj  , SEXP r_copy )
{
    const R_GE_gcontext *obj ;
    obj = ( const R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarString(mkChar(obj -> fontfamily)) : R_createArrayReference( obj -> fontfamily ,  "Array" ,  "charPtr" ,  (int[]) { 201 }, 1 , sizeof( char [ 201 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_col (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> col = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_fill (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> fill = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_gamma (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> gamma = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_lwd (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> lwd = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_lty (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> lty = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_lend (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    R_GE_lineend value ;
    value = ( R_GE_lineend ) INTEGER( r_value )[0];
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> lend = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_ljoin (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    R_GE_linejoin value ;
    value = ( R_GE_linejoin ) INTEGER( r_value )[0];
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> ljoin = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_lmitre (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> lmitre = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_cex (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> cex = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_ps (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> ps = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_lineheight (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> lineheight = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_fontface (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
    obj -> fontface = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_R_GE_gcontextPtr_set_fontfamily (SEXP r_obj , SEXP r_value  )
{
    R_GE_gcontext *obj ;
    obj = ( R_GE_gcontext * )  R_getNativeReference(r_obj, "R_GE_gcontext", NULL) ;
     {
       // convertRCharacterToCharArray(obj->fontfamily, r_value, 201);
       sprintf(obj->fontfamily, "%s", CHAR(STRING_ELT(r_value, 0)));
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
R_GE_gcontext *
coerce_R_GE_gcontext_R_GE_gcontextPtr ( SEXP r_from,  R_GE_gcontext * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( R_GE_gcontext * ) malloc( sizeof( R_GE_gcontext ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("col"));
    ans->col = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("fill"));
    ans->fill = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("gamma"));
    ans->gamma = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("lwd"));
    ans->lwd = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("lty"));
    ans->lty = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("lend"));
    ans->lend = ( R_GE_lineend ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("ljoin"));
    ans->ljoin = ( R_GE_linejoin ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("lmitre"));
    ans->lmitre = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("cex"));
    ans->cex = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("ps"));
    ans->ps = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("lineheight"));
    ans->lineheight = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("fontface"));
    ans->fontface = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("fontfamily"));
     {
       convertRCharacterToCharArray(ans->fontfamily, tmp, 201);
     }
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_R_GE_gcontext_R_GE_gcontextPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_R_GE_gcontext_R_GE_gcontextPtr (r_from, NULL), "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_R_GE_gcontextPtr_R_GE_gcontext ( SEXP from )
{
    R_GE_gcontext * ans ;
    ans = (R_GE_gcontext *) R_getNativeReference(from, "R_GE_gcontext", NULL);
    return( R_copyStruct_R_GE_gcontext ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_R_GE_gcontext ()
{
    SEXP r_ans = R_NilValue;
    R_GE_gcontext * ans;
    
    ans = ( R_GE_gcontext *) calloc (1, sizeof( R_GE_gcontext ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_R_GE_gcontextPtr_finalizer (SEXP val)
{
    R_GE_gcontext * ans = NULL;
    ans = ( R_GE_gcontext * ) R_ExternalPtrAddr(val);
     if(ans) { 
#ifdef DEBUG_R_GRAPHICS_DEVICE
         fprintf(stderr, "freeing R_GE_gcontext  %p\n", ans); 
#endif
         free(ans);
     }
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_R_GE_gcontextPtr (SEXP val)
{
    R_GE_gcontext * ans = NULL;
    ans =  (R_GE_gcontext *) R_getNativeReference(val, "R_GE_gcontextPtr", NULL); ;
    
     if(ans) { 
#ifdef DEBUG_R_GRAPHICS_DEVICE
        fprintf(stderr, "freeing R_GE_gcontext  %p\n", ans); 
#endif
        free(ans);
     }
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_R_GE_gcontext (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    R_GE_gcontext * value ;
    R_GE_gcontext * ans ;
    SEXP r_ans;
    
    value = (R_GE_gcontext *) R_getNativeReference(r_value, "R_GE_gcontextPtr", NULL);
    ans = ( R_GE_gcontext  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "R_GE_gcontextPtr" , "R_GE_gcontextPtr" ) ;
    return(r_ans);
} 
 
