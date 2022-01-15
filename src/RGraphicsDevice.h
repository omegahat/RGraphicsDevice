#include <Rdefines.h> 
#include <R_ext/GraphicsEngine.h> 
#include <R_ext/GraphicsDevice.h> 
//#include <RConverters.h> 
#include "RConverters.h"

#ifndef PROBLEM

#include <R_ext/Error.h>	/* for Rf_error and Rf_warning */
    
#define R_PROBLEM_BUFSIZE	4096
/* Parentheses added for FC4 with gcc4 and -D_FORTIFY_SOURCE=2 */
#define PROBLEM			{char R_problem_buf[R_PROBLEM_BUFSIZE];(snprintf)(R_problem_buf, R_PROBLEM_BUFSIZE,
#define MESSAGE                 {char R_problem_buf[R_PROBLEM_BUFSIZE];(snprintf)(R_problem_buf, R_PROBLEM_BUFSIZE,
#define ERROR			),Rf_error(R_problem_buf);}
#define RECOVER(x)		),Rf_error(R_problem_buf);}
#define WARNING(x)		),Rf_warning(R_problem_buf);}
#define WARN			WARNING(NULL)

#endif


struct  RDevDescMethods {
    SEXP activate ;
    SEXP circle ;
    SEXP clip ;
    SEXP close ;
    SEXP deactivate ;
    SEXP locator ;
    SEXP line ;
    SEXP metricInfo ;
    SEXP mode ;
    SEXP newPage ;
    SEXP polygon ;
    SEXP polyline ;
    SEXP rect ;
    SEXP size ;
    SEXP strWidth ;
    SEXP text ;
    SEXP onExit ;
    SEXP getEvent ;
    SEXP newFrameConfirm ;
    SEXP textUTF8 ;
    SEXP strWidthUTF8 ; 

    SEXP initDevice;
    SEXP state;
};
typedef  struct  RDevDescMethods RDevDescMethods ;

SEXP R_copyStruct_RDevDescMethods ( const struct  RDevDescMethods *value);


#include "proxyDecls.h"

#include "createExpressions.h"






