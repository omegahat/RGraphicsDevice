#include "RGraphicsDevice.h" 


#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_DevDesc ( const DevDesc *value)
{
    SEXP r_ans = R_NilValue, klass;
    int ctr = 0;
    klass = MAKE_CLASS("DevDesc");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class DevDesc "
        ERROR;
    }
    

    PROTECT(klass); ctr++;
    PROTECT(r_ans = NEW(klass)); ctr++;

    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("left"), ScalarReal( value -> left ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("right"), ScalarReal( value -> right ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("bottom"), ScalarReal( value -> bottom ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("top"), ScalarReal( value -> top ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("clipLeft"), ScalarReal( value -> clipLeft ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("clipRight"), ScalarReal( value -> clipRight ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("clipBottom"), ScalarReal( value -> clipBottom ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("clipTop"), ScalarReal( value -> clipTop ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("xCharOffset"), ScalarReal( value -> xCharOffset ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("yCharOffset"), ScalarReal( value -> yCharOffset ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("yLineBias"), ScalarReal( value -> yLineBias ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("ipr"), convertDoubleArrayToR ( 2 , value -> ipr , 1 , 0, 1 ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("cra"), convertDoubleArrayToR ( 2 , value -> cra , 1 , 0, 1 ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("gamma"), ScalarReal( value -> gamma ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canClip"), ScalarLogical(value -> canClip) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canChangeGamma"), ScalarLogical(value -> canChangeGamma) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canHAdj"), ScalarInteger( value -> canHAdj ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startps"), ScalarReal( value -> startps ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startcol"), ScalarInteger( value -> startcol ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startfill"), ScalarInteger( value -> startfill ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startlty"), ScalarInteger( value -> startlty ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startfont"), ScalarInteger( value -> startfont ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("startgamma"), ScalarReal( value -> startgamma ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("deviceSpecific"), R_createNativeReference( (void *)  value -> deviceSpecific ,  "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("displayListOn"), ScalarLogical(value -> displayListOn) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canGenMouseDown"), ScalarLogical(value -> canGenMouseDown) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canGenMouseMove"), ScalarLogical(value -> canGenMouseMove) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canGenMouseUp"), ScalarLogical(value -> canGenMouseUp) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("canGenKeybd"), ScalarLogical(value -> canGenKeybd) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("gettingEvent"), ScalarLogical(value -> gettingEvent) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("hasTextUTF8"), ScalarLogical(value -> hasTextUTF8) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("wantSymbolUTF8"), ScalarLogical(value -> wantSymbolUTF8) )); ctr++;
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install("useRotatedTextInContour"), ScalarLogical(value -> useRotatedTextInContour) )); ctr++;
    UNPROTECT( ctr ); 
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_left (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> left ) : R_createNativeReference( (void *)  &( obj -> left ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_right (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> right ) : R_createNativeReference( (void *)  &( obj -> right ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_bottom (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> bottom ) : R_createNativeReference( (void *)  &( obj -> bottom ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_top (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> top ) : R_createNativeReference( (void *)  &( obj -> top ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_clipLeft (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> clipLeft ) : R_createNativeReference( (void *)  &( obj -> clipLeft ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_clipRight (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> clipRight ) : R_createNativeReference( (void *)  &( obj -> clipRight ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_clipBottom (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> clipBottom ) : R_createNativeReference( (void *)  &( obj -> clipBottom ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_clipTop (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> clipTop ) : R_createNativeReference( (void *)  &( obj -> clipTop ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_xCharOffset (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> xCharOffset ) : R_createNativeReference( (void *)  &( obj -> xCharOffset ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_yCharOffset (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> yCharOffset ) : R_createNativeReference( (void *)  &( obj -> yCharOffset ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_yLineBias (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> yLineBias ) : R_createNativeReference( (void *)  &( obj -> yLineBias ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_ipr (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertDoubleArrayToR ( 2 , obj -> ipr , 1 , 0, 1 ) : R_createArrayReference( obj -> ipr ,  "Array" ,  "doublePtr" ,  (int[]) { 2 }, 1 , sizeof( double [ 2 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_cra (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? convertDoubleArrayToR ( 2 , obj -> cra , 1 , 0, 1 ) : R_createArrayReference( obj -> cra ,  "Array" ,  "doublePtr" ,  (int[]) { 2 }, 1 , sizeof( double [ 2 ] )) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_gamma (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> gamma ) : R_createNativeReference( (void *)  &( obj -> gamma ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canClip (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canClip) : R_createNativeReference( (void *)  &( obj -> canClip ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canChangeGamma (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canChangeGamma) : R_createNativeReference( (void *)  &( obj -> canChangeGamma ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canHAdj (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> canHAdj ) : R_createNativeReference( (void *)  &( obj -> canHAdj ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startps (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> startps ) : R_createNativeReference( (void *)  &( obj -> startps ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startcol (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> startcol ) : R_createNativeReference( (void *)  &( obj -> startcol ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startfill (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> startfill ) : R_createNativeReference( (void *)  &( obj -> startfill ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startlty (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> startlty ) : R_createNativeReference( (void *)  &( obj -> startlty ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startfont (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarInteger( obj -> startfont ) : R_createNativeReference( (void *)  &( obj -> startfont ) ,  "intPtr" , "intPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_startgamma (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarReal( obj -> startgamma ) : R_createNativeReference( (void *)  &( obj -> startgamma ) ,  "doublePtr" , "doublePtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_deviceSpecific (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? R_createNativeReference( (void *)  obj -> deviceSpecific ,  "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ) : R_createNativeReference( (void *)  obj -> deviceSpecific ,  "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_displayListOn (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> displayListOn) : R_createNativeReference( (void *)  &( obj -> displayListOn ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canGenMouseDown (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canGenMouseDown) : R_createNativeReference( (void *)  &( obj -> canGenMouseDown ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canGenMouseMove (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canGenMouseMove) : R_createNativeReference( (void *)  &( obj -> canGenMouseMove ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canGenMouseUp (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canGenMouseUp) : R_createNativeReference( (void *)  &( obj -> canGenMouseUp ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_canGenKeybd (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> canGenKeybd) : R_createNativeReference( (void *)  &( obj -> canGenKeybd ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_gettingEvent (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> gettingEvent) : R_createNativeReference( (void *)  &( obj -> gettingEvent ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_hasTextUTF8 (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> hasTextUTF8) : R_createNativeReference( (void *)  &( obj -> hasTextUTF8 ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_wantSymbolUTF8 (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> wantSymbolUTF8) : R_createNativeReference( (void *)  &( obj -> wantSymbolUTF8 ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_get_useRotatedTextInContour (SEXP r_obj  , SEXP r_copy )
{
    const DevDesc *obj ;
    obj = ( const DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    return(  INTEGER(r_copy)[0] ? ScalarLogical(obj -> useRotatedTextInContour) : R_createNativeReference( (void *)  &( obj -> useRotatedTextInContour ) ,  "RbooleanPtr" , "RbooleanPtr" ) );
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_left (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> left = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_right (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> right = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_bottom (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> bottom = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_top (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> top = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_clipLeft (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> clipLeft = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_clipRight (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> clipRight = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_clipBottom (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> clipBottom = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_clipTop (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> clipTop = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_xCharOffset (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> xCharOffset = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_yCharOffset (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> yCharOffset = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_yLineBias (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> yLineBias = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_ipr (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->ipr [i] = REAL ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_cra (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
     {
       int i;
       for(i = 0; i < 2 ; i++)
            obj->cra [i] = REAL ( r_value )[i];
     }
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_gamma (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> gamma = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canClip (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canClip = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canChangeGamma (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canChangeGamma = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canHAdj (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canHAdj = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startps (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startps = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startcol (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    int value ;
    // unsigned int ival;
    value = (int) ( (unsigned int) asReal( r_value ));
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startcol = value;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startfill (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    int value ;
    value = asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startfill = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startlty (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startlty = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startfont (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    int value ;
    value = asInteger( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startfont = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_startgamma (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    double value ;
    value = ( double ) asReal( r_value );
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> startgamma = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_deviceSpecific (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj->deviceSpecific = (RDevDescMethods *) R_getNativeReference(r_value, "RDevDescMethodsPtr", NULL);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_displayListOn (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> displayListOn = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canGenMouseDown (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canGenMouseDown = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canGenMouseMove (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canGenMouseMove = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canGenMouseUp (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canGenMouseUp = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_canGenKeybd (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> canGenKeybd = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_gettingEvent (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> gettingEvent = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_hasTextUTF8 (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> hasTextUTF8 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_wantSymbolUTF8 (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> wantSymbolUTF8 = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_DevDescPtr_set_useRotatedTextInContour (SEXP r_obj , SEXP r_value  )
{
    DevDesc *obj ;
    Rboolean value ;
    value = LOGICAL(r_value)[0];
    obj = ( DevDesc * )  R_getNativeReference(r_obj, "DevDesc", NULL) ;
    obj -> useRotatedTextInContour = value ;
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
DevDesc *
coerce_DevDesc_DevDescPtr ( SEXP r_from,  DevDesc * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( DevDesc * ) malloc( sizeof( DevDesc ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("left"));
    ans->left = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("right"));
    ans->right = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("bottom"));
    ans->bottom = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("top"));
    ans->top = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("clipLeft"));
    ans->clipLeft = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("clipRight"));
    ans->clipRight = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("clipBottom"));
    ans->clipBottom = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("clipTop"));
    ans->clipTop = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("xCharOffset"));
    ans->xCharOffset = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("yCharOffset"));
    ans->yCharOffset = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("yLineBias"));
    ans->yLineBias = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("ipr"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->ipr [i] = REAL ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("cra"));
     {
       int i;
       for(i = 0; i < 2 ; i++)
            ans->cra [i] = REAL ( tmp )[i];
     }
    tmp = GET_SLOT(r_from, Rf_install("gamma"));
    ans->gamma = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("canClip"));
    ans->canClip = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canChangeGamma"));
    ans->canChangeGamma = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canHAdj"));
    ans->canHAdj = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startps"));
    ans->startps = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startcol"));
    ans->startcol = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startfill"));
    ans->startfill = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startlty"));
    ans->startlty = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startfont"));
    ans->startfont = asInteger( tmp );
    tmp = GET_SLOT(r_from, Rf_install("startgamma"));
    ans->startgamma = ( double ) asReal( tmp );
    tmp = GET_SLOT(r_from, Rf_install("deviceSpecific"));
    ans->deviceSpecific = (RDevDescMethods *) R_getNativeReference(tmp, "RDevDescMethodsPtr", NULL);
    tmp = GET_SLOT(r_from, Rf_install("displayListOn"));
    ans->displayListOn = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canGenMouseDown"));
    ans->canGenMouseDown = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canGenMouseMove"));
    ans->canGenMouseMove = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canGenMouseUp"));
    ans->canGenMouseUp = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("canGenKeybd"));
    ans->canGenKeybd = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("gettingEvent"));
    ans->gettingEvent = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("hasTextUTF8"));
    ans->hasTextUTF8 = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("wantSymbolUTF8"));
    ans->wantSymbolUTF8 = ( Rboolean ) INTEGER( tmp )[0];
    tmp = GET_SLOT(r_from, Rf_install("useRotatedTextInContour"));
    ans->useRotatedTextInContour = ( Rboolean ) INTEGER( tmp )[0];
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_DevDesc_DevDescPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_DevDesc_DevDescPtr (r_from, NULL), "DevDescPtr" , "DevDescPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_DevDescPtr_DevDesc ( SEXP from )
{
    DevDesc * ans ;
    ans = (DevDesc *) R_getNativeReference(from, "DevDesc", NULL);
    return( R_copyStruct_DevDesc ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_DevDesc ()
{
    SEXP r_ans = R_NilValue;
    DevDesc * ans;
    
    ans = ( DevDesc *) calloc (1, sizeof( DevDesc ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "DevDescPtr" , "DevDescPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_DevDescPtr_finalizer (SEXP val)
{
    DevDesc * ans = NULL;
    ans = ( DevDesc * ) R_ExternalPtrAddr(val);
     if(ans) { 
#ifdef DEBUG_R_RUNTIME
          fprintf(stderr, "freeing DevDesc  %p\n", ans); 
#endif

          free(ans);
     }
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_DevDescPtr (SEXP val)
{
    DevDesc * ans = NULL;
    ans =  (DevDesc *) R_getNativeReference(val, "DevDescPtr", NULL); ;
    
     if(ans) { 
#ifdef DEBUG_R_GRAPHICS_DEVICE
         fprintf(stderr, "freeing DevDesc  %p\n", ans); 
#endif
         free(ans);
     }
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_DevDesc (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    DevDesc * value ;
    DevDesc * ans ;
    SEXP r_ans;
    
    value = (DevDesc *) R_getNativeReference(r_value, "DevDescPtr", NULL);
    ans = ( DevDesc  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "DevDescPtr" , "DevDescPtr" ) ;
    return(r_ans);
} 
 
