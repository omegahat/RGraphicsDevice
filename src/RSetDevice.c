#include "RGraphicsDevice.h"


void
setRMethods(RDevDescMethods *dev, SEXP methods)
{
    SEXP tmp;

    tmp = GET_SLOT(methods, Rf_install("activate"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> activate = tmp);
    else
        dev-> activate = NULL;

    tmp = GET_SLOT(methods, Rf_install("circle"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> circle = tmp);  /* createCircleCall(tmp)); */
    else
        dev-> circle = NULL;

    tmp = GET_SLOT(methods, Rf_install("clip"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> clip = tmp);
    else
        dev-> clip = NULL;

    tmp = GET_SLOT(methods, Rf_install("close"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> close = tmp);
    else
        dev-> close = NULL;

    tmp = GET_SLOT(methods, Rf_install("deactivate"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> deactivate = tmp);
    else
        dev-> deactivate = NULL;

    tmp = GET_SLOT(methods, Rf_install("locator"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> locator = tmp);
    else
        dev-> locator = NULL;

    tmp = GET_SLOT(methods, Rf_install("line"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> line = tmp);
    else
        dev-> line = NULL;

    tmp = GET_SLOT(methods, Rf_install("metricInfo"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> metricInfo = tmp);
    else
        dev-> metricInfo = NULL;

    tmp = GET_SLOT(methods, Rf_install("mode"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> mode = tmp);
    else
        dev-> mode = NULL;

    tmp = GET_SLOT(methods, Rf_install("newPage"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> newPage = tmp);
    else
        dev-> newPage = NULL;

    tmp = GET_SLOT(methods, Rf_install("polygon"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> polygon = tmp);
    else
        dev-> polygon = NULL;

    tmp = GET_SLOT(methods, Rf_install("polyline"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> polyline = tmp);
    else
        dev-> polyline = NULL;

    tmp = GET_SLOT(methods, Rf_install("rect"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> rect = tmp);
    else
        dev-> rect = NULL;

    tmp = GET_SLOT(methods, Rf_install("size"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> size = tmp);
    else
        dev-> size = NULL;

    tmp = GET_SLOT(methods, Rf_install("strWidth"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> strWidth = tmp);
    else
        dev-> strWidth = NULL;

    tmp = GET_SLOT(methods, Rf_install("text"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> text = tmp);
    else
        dev-> text = NULL;

    tmp = GET_SLOT(methods, Rf_install("onExit"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> onExit = tmp);
    else
        dev-> onExit = NULL;

    tmp = GET_SLOT(methods, Rf_install("getEvent"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> getEvent = tmp);
    else
        dev-> getEvent = NULL;

    tmp = GET_SLOT(methods, Rf_install("newFrameConfirm"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> newFrameConfirm = tmp);
    else
        dev-> newFrameConfirm = NULL;

    tmp = GET_SLOT(methods, Rf_install("textUTF8"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> textUTF8 = tmp);
    else
        dev-> textUTF8 = NULL;

    tmp = GET_SLOT(methods, Rf_install("strWidthUTF8"));
    if(tmp != R_NilValue)
        R_PreserveObject(dev-> strWidthUTF8 = tmp);
    else
        dev-> strWidthUTF8 = NULL;
}

#define SET_OP(op) \
    dd-> op = TYPEOF(GET_SLOT(methods, Rf_install(#op))) == EXTPTRSXP ? R_ExternalPtrAddr(GET_SLOT(methods, Rf_install(#op))) : R_##op

#if 1
void *
setOp(const char *str, pDevDesc dd, void *dflt, SEXP methods)
{

    SEXP tmp = GET_SLOT(methods, Rf_install(str));
    if(TYPEOF(tmp) == EXTPTRSXP) {
	return(R_ExternalPtrAddr(tmp));
    } else {
	return(dflt);
    }
}

#undef SET_OP
#define SET_OP(op) \
    dd -> op = setOp(#op, dd, R_##op, methods)
#endif

int
initializeDevDescMethods(pDevDesc dd, SEXP methods)
{
    dd->deviceSpecific = calloc(1, sizeof(RDevDescMethods));
    if(!dd->deviceSpecific) return(0);
    setRMethods((RDevDescMethods *) dd->deviceSpecific, methods);

#if 0

    dd -> activate = R_activate ;
    dd -> circle = R_circle ;
    dd -> clip = R_clip ;
    dd -> close = R_close ;
    dd -> deactivate = R_deactivate ;
    dd -> locator = R_locator ;
    dd -> line = R_line ;
    dd -> metricInfo = R_metricInfo ;
    dd -> mode = R_mode ;
    dd -> newPage = R_newPage ;
    dd -> polygon = R_polygon ;
    dd -> polyline = R_polyline ;
    dd -> rect = R_rect ;
    dd -> size = R_size ;
    dd -> strWidth = R_strWidth ;
    dd -> text = R_text ;
    dd -> onExit = R_onExit ;
    dd -> newFrameConfirm = R_newFrameConfirm ;
    dd -> textUTF8 = R_textUTF8 ;
    dd -> strWidthUTF8 = R_strWidthUTF8 ;
#else

    SET_OP(activate );
    SET_OP(circle );
    SET_OP(clip );
    SET_OP(close );
    SET_OP(deactivate );
    SET_OP(locator );
    SET_OP(line );
    SET_OP(metricInfo );
    SET_OP(mode );
    SET_OP(newPage );
    SET_OP(polygon );
    SET_OP(polyline );
    SET_OP(rect );
    SET_OP(size );
    SET_OP(strWidth );
    SET_OP(text );
    SET_OP(onExit );
    SET_OP(newFrameConfirm );
    SET_OP(textUTF8 );
    SET_OP(strWidthUTF8 );
#endif
    return(1);
} 

