#include "RGraphicsDevice.h" 

#define SetMethodSlot(slot) \
    PROTECT(r_ans = SET_SLOT(r_ans, Rf_install(#slot), value -> slot ? value->slot : R_NilValue));

#ifdef __cplusplus
extern "C"
#endif
SEXP R_copyStruct_RDevDescMethods ( const struct  RDevDescMethods *value)
{
    SEXP r_ans = R_NilValue, klass;
    int ctr = 0;
    klass = MAKE_CLASS("RDevDescMethods");
    if(klass == R_NilValue) {
       PROBLEM "Cannot find R class RDevDescMethods "
        ERROR;
    }
    

    PROTECT(klass);  ctr++; 
    PROTECT(r_ans = NEW(klass));  ctr++; 

     SetMethodSlot(activate);  ctr++; 
     SetMethodSlot(circle);  ctr++; 
     SetMethodSlot(clip);  ctr++; 
     SetMethodSlot(close);  ctr++; 
     SetMethodSlot(deactivate);  ctr++; 
     SetMethodSlot(locator);  ctr++; 
     SetMethodSlot(line);  ctr++; 
     SetMethodSlot(metricInfo);  ctr++; 
     SetMethodSlot(mode);  ctr++; 
     SetMethodSlot(newPage);  ctr++; 
     SetMethodSlot(polygon);  ctr++; 
     SetMethodSlot(polyline);  ctr++; 
     SetMethodSlot(rect);  ctr++; 
     SetMethodSlot(size);  ctr++; 
     SetMethodSlot(strWidth);  ctr++; 
     SetMethodSlot(text);  ctr++; 
     SetMethodSlot(onExit);  ctr++; 
     SetMethodSlot(getEvent);  ctr++; 
     SetMethodSlot(newFrameConfirm);  ctr++; 
     SetMethodSlot(textUTF8);  ctr++; 
     SetMethodSlot(strWidthUTF8);  ctr++; 
     SetMethodSlot(initDevice);  ctr++; 

     SetMethodSlot(state);  ctr++; 


    UNPROTECT( ctr );
    
    return(r_ans);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_activate (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || obj->activate == NULL)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> activate : R_createNativeReference( (void *)  &( obj -> activate ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_circle (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || obj->circle == NULL)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> circle : R_createNativeReference( (void *)  &( obj -> circle ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_clip (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->clip)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> clip : R_createNativeReference( (void *)  &( obj -> clip ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_close (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->close)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> close : R_createNativeReference( (void *)  &( obj -> close ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_deactivate (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->deactivate)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> deactivate : R_createNativeReference( (void *)  &( obj -> deactivate ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_locator (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->locator)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> locator : R_createNativeReference( (void *)  &( obj -> locator ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_line (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->line)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> line : R_createNativeReference( (void *)  &( obj -> line ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_metricInfo (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->metricInfo)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> metricInfo : R_createNativeReference( (void *)  &( obj -> metricInfo ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_mode (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->mode)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> mode : R_createNativeReference( (void *)  &( obj -> mode ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_newPage (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->newPage)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> newPage : R_createNativeReference( (void *)  &( obj -> newPage ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_polygon (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->polygon)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> polygon : R_createNativeReference( (void *)  &( obj -> polygon ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_polyline (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->polyline)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> polyline : R_createNativeReference( (void *)  &( obj -> polyline ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_rect (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->rect)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> rect : R_createNativeReference( (void *)  &( obj -> rect ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_size (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->size)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> size : R_createNativeReference( (void *)  &( obj -> size ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_strWidth (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->strWidth)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> strWidth : R_createNativeReference( (void *)  &( obj -> strWidth ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_text (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->text)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> text : R_createNativeReference( (void *)  &( obj -> text ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_onExit (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->onExit)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> onExit : R_createNativeReference( (void *)  &( obj -> onExit ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_getEvent (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->getEvent)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> getEvent : R_createNativeReference( (void *)  &( obj -> getEvent ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_newFrameConfirm (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->newFrameConfirm)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> newFrameConfirm : R_createNativeReference( (void *)  &( obj -> newFrameConfirm ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_textUTF8 (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->textUTF8)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> textUTF8 : R_createNativeReference( (void *)  &( obj -> textUTF8 ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_strWidthUTF8 (SEXP r_obj  , SEXP r_copy )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->strWidthUTF8)
	return(R_NilValue);
    return(  INTEGER(r_copy)[0] ? obj -> strWidthUTF8 : R_createNativeReference( (void *)  &( obj -> strWidthUTF8 ) ,  "SEXPPtr" , "SEXPPtr" ) );
    return(r_obj);
} 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_get_state (SEXP r_obj )
{
    const struct  RDevDescMethods *obj ;
    obj = ( const struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(!obj || !obj->state)
	return(R_NilValue);
    return(obj->state);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_activate (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> activate && obj -> activate != R_NilValue)
          R_ReleaseObject(obj -> activate);
       obj -> activate = value;
       if(obj -> activate && obj -> activate != R_NilValue)
          R_PreserveObject(obj -> activate);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_circle (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> circle && obj -> circle != R_NilValue)
          R_ReleaseObject(obj -> circle);
#ifdef USE_R_EXPRESSIONS
    obj->circle = createCircleCall(value);
#else
    obj -> circle = value;
#endif
       if(obj -> circle && obj -> circle != R_NilValue)
          R_PreserveObject(obj -> circle);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_clip (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> clip && obj -> clip != R_NilValue)
          R_ReleaseObject(obj -> clip);
       obj -> clip = value;
       if(obj -> clip && obj -> clip != R_NilValue)
          R_PreserveObject(obj -> clip);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_close (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> close && obj -> close != R_NilValue)
          R_ReleaseObject(obj -> close);
       obj -> close = value;
       if(obj -> close && obj -> close != R_NilValue)
          R_PreserveObject(obj -> close);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_deactivate (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> deactivate && obj -> deactivate != R_NilValue)
          R_ReleaseObject(obj -> deactivate);
       obj -> deactivate = value;
       if(obj -> deactivate && obj -> deactivate != R_NilValue)
          R_PreserveObject(obj -> deactivate);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_locator (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> locator && obj -> locator != R_NilValue)
          R_ReleaseObject(obj -> locator);
       obj -> locator = value;
       if(obj -> locator && obj -> locator != R_NilValue)
          R_PreserveObject(obj -> locator);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_line (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> line && obj -> line != R_NilValue)
          R_ReleaseObject(obj -> line);
       obj -> line = value;
       if(obj -> line && obj -> line != R_NilValue)
          R_PreserveObject(obj -> line);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_metricInfo (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> metricInfo && obj -> metricInfo != R_NilValue)
          R_ReleaseObject(obj -> metricInfo);
       obj -> metricInfo = value;
       if(obj -> metricInfo && obj -> metricInfo != R_NilValue)
          R_PreserveObject(obj -> metricInfo);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_mode (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> mode && obj -> mode != R_NilValue)
          R_ReleaseObject(obj -> mode);
       obj -> mode = value;
       if(obj -> mode && obj -> mode != R_NilValue)
          R_PreserveObject(obj -> mode);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_newPage (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> newPage && obj -> newPage != R_NilValue)
          R_ReleaseObject(obj -> newPage);
       obj -> newPage = value;
       if(obj -> newPage && obj -> newPage != R_NilValue)
          R_PreserveObject(obj -> newPage);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_polygon (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> polygon && obj -> polygon != R_NilValue)
          R_ReleaseObject(obj -> polygon);
       obj -> polygon = value;
       if(obj -> polygon && obj -> polygon != R_NilValue)
          R_PreserveObject(obj -> polygon);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_polyline (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> polyline && obj -> polyline != R_NilValue)
          R_ReleaseObject(obj -> polyline);
       obj -> polyline = value;
       if(obj -> polyline && obj -> polyline != R_NilValue)
          R_PreserveObject(obj -> polyline);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_rect (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> rect && obj -> rect != R_NilValue)
          R_ReleaseObject(obj -> rect);
       obj -> rect = value;
       if(obj -> rect && obj -> rect != R_NilValue)
          R_PreserveObject(obj -> rect);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_size (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> size && obj -> size != R_NilValue)
          R_ReleaseObject(obj -> size);
       obj -> size = value;
       if(obj -> size && obj -> size != R_NilValue)
          R_PreserveObject(obj -> size);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_strWidth (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> strWidth && obj -> strWidth != R_NilValue)
          R_ReleaseObject(obj -> strWidth);
       obj -> strWidth = value;
       if(obj -> strWidth && obj -> strWidth != R_NilValue)
          R_PreserveObject(obj -> strWidth);
    return(r_obj);
} 


#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_state (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> state && obj -> state != R_NilValue)
          R_ReleaseObject(obj -> state);
       obj -> state = value;
       if(obj -> state && obj -> state != R_NilValue)
	   R_PreserveObject(obj -> state);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_text (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> text && obj -> text != R_NilValue)
          R_ReleaseObject(obj -> text);
       obj -> text = value;
       if(obj -> text && obj -> text != R_NilValue)
          R_PreserveObject(obj -> text);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_onExit (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> onExit && obj -> onExit != R_NilValue)
          R_ReleaseObject(obj -> onExit);
       obj -> onExit = value;
       if(obj -> onExit && obj -> onExit != R_NilValue)
          R_PreserveObject(obj -> onExit);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_getEvent (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> getEvent && obj -> getEvent != R_NilValue)
          R_ReleaseObject(obj -> getEvent);
       obj -> getEvent = value;
       if(obj -> getEvent && obj -> getEvent != R_NilValue)
          R_PreserveObject(obj -> getEvent);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_newFrameConfirm (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> newFrameConfirm && obj -> newFrameConfirm != R_NilValue)
          R_ReleaseObject(obj -> newFrameConfirm);
       obj -> newFrameConfirm = value;
       if(obj -> newFrameConfirm && obj -> newFrameConfirm != R_NilValue)
          R_PreserveObject(obj -> newFrameConfirm);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_textUTF8 (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> textUTF8 && obj -> textUTF8 != R_NilValue)
          R_ReleaseObject(obj -> textUTF8);
       obj -> textUTF8 = value;
       if(obj -> textUTF8 && obj -> textUTF8 != R_NilValue)
          R_PreserveObject(obj -> textUTF8);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_RDevDescMethodsPtr_set_strWidthUTF8 (SEXP r_obj , SEXP r_value  )
{
    struct  RDevDescMethods *obj ;
    SEXP value ;
    value = r_value;
    obj = ( struct  RDevDescMethods * )  R_getNativeReference(r_obj, "RDevDescMethods", NULL) ;
    if(obj -> strWidthUTF8 && obj -> strWidthUTF8 != R_NilValue)
          R_ReleaseObject(obj -> strWidthUTF8);
       obj -> strWidthUTF8 = value;
       if(obj -> strWidthUTF8 && obj -> strWidthUTF8 != R_NilValue)
          R_PreserveObject(obj -> strWidthUTF8);
    return(r_obj);
} 
 
#ifdef __cplusplus
extern "C"
#endif
struct  RDevDescMethods *
coerce_RDevDescMethods_RDevDescMethodsPtr ( SEXP r_from,  struct  RDevDescMethods * ans )
{
    
    SEXP tmp;
    
    if(!ans) {
        ans = ( struct  RDevDescMethods * ) malloc( sizeof( struct  RDevDescMethods ));
        if(!ans) return(ans);
    }
    
    tmp = GET_SLOT(r_from, Rf_install("activate"));
    ans->activate = tmp;
    tmp = GET_SLOT(r_from, Rf_install("circle"));
    ans->circle = tmp;
    tmp = GET_SLOT(r_from, Rf_install("clip"));
    ans->clip = tmp;
    tmp = GET_SLOT(r_from, Rf_install("close"));
    ans->close = tmp;
    tmp = GET_SLOT(r_from, Rf_install("deactivate"));
    ans->deactivate = tmp;
    tmp = GET_SLOT(r_from, Rf_install("locator"));
    ans->locator = tmp;
    tmp = GET_SLOT(r_from, Rf_install("line"));
    ans->line = tmp;
    tmp = GET_SLOT(r_from, Rf_install("metricInfo"));
    ans->metricInfo = tmp;
    tmp = GET_SLOT(r_from, Rf_install("mode"));
    ans->mode = tmp;
    tmp = GET_SLOT(r_from, Rf_install("newPage"));
    ans->newPage = tmp;
    tmp = GET_SLOT(r_from, Rf_install("polygon"));
    ans->polygon = tmp;
    tmp = GET_SLOT(r_from, Rf_install("polyline"));
    ans->polyline = tmp;
    tmp = GET_SLOT(r_from, Rf_install("rect"));
    ans->rect = tmp;
    tmp = GET_SLOT(r_from, Rf_install("size"));
    ans->size = tmp;
    tmp = GET_SLOT(r_from, Rf_install("strWidth"));
    ans->strWidth = tmp;
    tmp = GET_SLOT(r_from, Rf_install("text"));
    ans->text = tmp;
    tmp = GET_SLOT(r_from, Rf_install("onExit"));
    ans->onExit = tmp;
    tmp = GET_SLOT(r_from, Rf_install("getEvent"));
    ans->getEvent = tmp;
    tmp = GET_SLOT(r_from, Rf_install("newFrameConfirm"));
    ans->newFrameConfirm = tmp;
    tmp = GET_SLOT(r_from, Rf_install("textUTF8"));
    ans->textUTF8 = tmp;
    tmp = GET_SLOT(r_from, Rf_install("strWidthUTF8"));
    ans->strWidthUTF8 = tmp;
    return(ans);
}
 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_RDevDescMethods_RDevDescMethodsPtr  ( SEXP r_from )
{
    return ( R_createNativeReference( (void *) coerce_RDevDescMethods_RDevDescMethodsPtr (r_from, NULL), "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ));
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_coerce_RDevDescMethodsPtr_RDevDescMethods ( SEXP from )
{
    struct  RDevDescMethods * ans ;
    ans = (struct  RDevDescMethods *) R_getNativeReference(from, "RDevDescMethods", NULL);
    return( R_copyStruct_RDevDescMethods ( ans ) );
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_new_RDevDescMethods ()
{
    SEXP r_ans = R_NilValue;
    struct  RDevDescMethods * ans;
    
    ans = ( struct  RDevDescMethods *) calloc (1, sizeof( struct  RDevDescMethods ));
     r_ans =  R_createNativeReference( (void *)  ans ,  "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ) ;
    return(r_ans);
} 
#ifdef __cplusplus
extern "C"
#endif
void
R_free_RDevDescMethodsPtr_finalizer (SEXP val)
{
    struct  RDevDescMethods * ans = NULL;
    ans = ( struct  RDevDescMethods * ) R_ExternalPtrAddr(val);
     if(ans) { fprintf(stderr, "freeing RDevDescMethods  %p\n", ans); free(ans);}
} 
#ifdef __cplusplus
extern "C"
#endif
SEXP
R_free_RDevDescMethodsPtr (SEXP val)
{
    struct  RDevDescMethods * ans = NULL;
    ans =  (struct  RDevDescMethods *) R_getNativeReference(val, "RDevDescMethodsPtr", NULL); ;
    
     if(ans) { fprintf(stderr, "freeing RDevDescMethods  %p\n", ans); free(ans);}
    return(ScalarLogical(ans ? TRUE : FALSE));
} 
SEXP
R_duplicate_RDevDescMethods (SEXP r_value, SEXP r_copy, SEXP r_alloc)
{
    struct  RDevDescMethods * value ;
    struct  RDevDescMethods * ans ;
    SEXP r_ans;
    
    value = (struct  RDevDescMethods *) R_getNativeReference(r_value, "RDevDescMethodsPtr", NULL);
    ans = ( struct  RDevDescMethods  *) malloc(sizeof(ans));
    *ans = *value;
    r_ans = R_createNativeReference( (void *)  ans ,  "RDevDescMethodsPtr" , "RDevDescMethodsPtr" ) ;
    return(r_ans);
} 
 
