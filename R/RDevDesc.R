#### <Start of definition>

setClass('RbooleanPtr', contains = 'RC++StructReference', prototype = list(classes = 'RbooleanPtr'))

setClass('Rboolean', contains = 'CStruct')



setClass('DevDescPtr', contains = 'RC++StructReference', prototype = list(classes = 'DevDescPtr'))

setClass('DevDesc', representation(
   'left' = 'numeric',
  'right' = 'numeric',
  'bottom' = 'numeric',
  'top' = 'numeric',
  'clipLeft' = 'numeric',
  'clipRight' = 'numeric',
  'clipBottom' = 'numeric',
  'clipTop' = 'numeric',
  'xCharOffset' = 'numeric',
  'yCharOffset' = 'numeric',
  'yLineBias' = 'numeric',
  'ipr' = 'numeric',
  'cra' = 'numeric',
  'gamma' = 'numeric',
  'canClip' = 'Rboolean',
  'canChangeGamma' = 'Rboolean',
  'canHAdj' = 'integer',
  'startps' = 'numeric',
  'startcol' = 'numeric', # 'integer',
  'startfill' = 'numeric', # 'integer',
  'startlty' = 'integer',
  'startfont' = 'integer',
  'startgamma' = 'numeric',
  'deviceSpecific' = 'RDevDescMethodsPtr',
  'displayListOn' = 'Rboolean',
  'canGenMouseDown' = 'Rboolean',
  'canGenMouseMove' = 'Rboolean',
  'canGenMouseUp' = 'Rboolean',
  'canGenKeybd' = 'Rboolean',
  'gettingEvent' = 'Rboolean',
  'hasTextUTF8' = 'Rboolean',
  'wantSymbolUTF8' = 'Rboolean',
  'useRotatedTextInContour' = 'Rboolean' ), contains = 'CStruct')


setMethod( 'names' , c( 'DevDescPtr' ),       
function( x  )
{
    c(
         'left',
     'right',
     'bottom',
     'top',
     'clipLeft',
     'clipRight',
     'clipBottom',
     'clipTop',
     'xCharOffset',
     'yCharOffset',
     'yLineBias',
     'ipr',
     'cra',
     'gamma',
     'canClip',
     'canChangeGamma',
     'canHAdj',
     'startps',
     'startcol',
     'startfill',
     'startlty',
     'startfont',
     'startgamma',
     'deviceSpecific',
     'displayListOn',
     'canGenMouseDown',
     'canGenMouseMove',
     'canGenMouseUp',
     'canGenKeybd',
     'gettingEvent',
     'hasTextUTF8',
     'wantSymbolUTF8',
     'useRotatedTextInContour'
    )
} )
 
setMethod( '$' , c( 'DevDescPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'left' = `DevDescPtr_get_left`,
		'right' = `DevDescPtr_get_right`,
		'bottom' = `DevDescPtr_get_bottom`,
		'top' = `DevDescPtr_get_top`,
		'clipLeft' = `DevDescPtr_get_clipLeft`,
		'clipRight' = `DevDescPtr_get_clipRight`,
		'clipBottom' = `DevDescPtr_get_clipBottom`,
		'clipTop' = `DevDescPtr_get_clipTop`,
		'xCharOffset' = `DevDescPtr_get_xCharOffset`,
		'yCharOffset' = `DevDescPtr_get_yCharOffset`,
		'yLineBias' = `DevDescPtr_get_yLineBias`,
		'ipr' = `DevDescPtr_get_ipr`,
		'cra' = `DevDescPtr_get_cra`,
		'gamma' = `DevDescPtr_get_gamma`,
		'canClip' = `DevDescPtr_get_canClip`,
		'canChangeGamma' = `DevDescPtr_get_canChangeGamma`,
		'canHAdj' = `DevDescPtr_get_canHAdj`,
		'startps' = `DevDescPtr_get_startps`,
		'startcol' = `DevDescPtr_get_startcol`,
		'startfill' = `DevDescPtr_get_startfill`,
		'startlty' = `DevDescPtr_get_startlty`,
		'startfont' = `DevDescPtr_get_startfont`,
		'startgamma' = `DevDescPtr_get_startgamma`,
		'deviceSpecific' = `DevDescPtr_get_deviceSpecific`,
		'displayListOn' = `DevDescPtr_get_displayListOn`,
		'canGenMouseDown' = `DevDescPtr_get_canGenMouseDown`,
		'canGenMouseMove' = `DevDescPtr_get_canGenMouseMove`,
		'canGenMouseUp' = `DevDescPtr_get_canGenMouseUp`,
		'canGenKeybd' = `DevDescPtr_get_canGenKeybd`,
		'gettingEvent' = `DevDescPtr_get_gettingEvent`,
		'hasTextUTF8' = `DevDescPtr_get_hasTextUTF8`,
		'wantSymbolUTF8' = `DevDescPtr_get_wantSymbolUTF8`,
		'useRotatedTextInContour' = `DevDescPtr_get_useRotatedTextInContour` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in DevDesc. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'DevDescPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'left' = `DevDescPtr_set_left`,
		'right' = `DevDescPtr_set_right`,
		'bottom' = `DevDescPtr_set_bottom`,
		'top' = `DevDescPtr_set_top`,
		'clipLeft' = `DevDescPtr_set_clipLeft`,
		'clipRight' = `DevDescPtr_set_clipRight`,
		'clipBottom' = `DevDescPtr_set_clipBottom`,
		'clipTop' = `DevDescPtr_set_clipTop`,
		'xCharOffset' = `DevDescPtr_set_xCharOffset`,
		'yCharOffset' = `DevDescPtr_set_yCharOffset`,
		'yLineBias' = `DevDescPtr_set_yLineBias`,
		'ipr' = `DevDescPtr_set_ipr`,
		'cra' = `DevDescPtr_set_cra`,
		'gamma' = `DevDescPtr_set_gamma`,
		'canClip' = `DevDescPtr_set_canClip`,
		'canChangeGamma' = `DevDescPtr_set_canChangeGamma`,
		'canHAdj' = `DevDescPtr_set_canHAdj`,
		'startps' = `DevDescPtr_set_startps`,
		'startcol' = `DevDescPtr_set_startcol`,
		'startfill' = `DevDescPtr_set_startfill`,
		'startlty' = `DevDescPtr_set_startlty`,
		'startfont' = `DevDescPtr_set_startfont`,
		'startgamma' = `DevDescPtr_set_startgamma`,
		'deviceSpecific' = `DevDescPtr_set_deviceSpecific`,
		'displayListOn' = `DevDescPtr_set_displayListOn`,
		'canGenMouseDown' = `DevDescPtr_set_canGenMouseDown`,
		'canGenMouseMove' = `DevDescPtr_set_canGenMouseMove`,
		'canGenMouseUp' = `DevDescPtr_set_canGenMouseUp`,
		'canGenKeybd' = `DevDescPtr_set_canGenKeybd`,
		'gettingEvent' = `DevDescPtr_set_gettingEvent`,
		'hasTextUTF8' = `DevDescPtr_set_hasTextUTF8`,
		'wantSymbolUTF8' = `DevDescPtr_set_wantSymbolUTF8`,
		'useRotatedTextInContour' = `DevDescPtr_set_useRotatedTextInContour` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in DevDesc. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'DevDescPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'left' = `DevDescPtr_get_left`,
		'right' = `DevDescPtr_get_right`,
		'bottom' = `DevDescPtr_get_bottom`,
		'top' = `DevDescPtr_get_top`,
		'clipLeft' = `DevDescPtr_get_clipLeft`,
		'clipRight' = `DevDescPtr_get_clipRight`,
		'clipBottom' = `DevDescPtr_get_clipBottom`,
		'clipTop' = `DevDescPtr_get_clipTop`,
		'xCharOffset' = `DevDescPtr_get_xCharOffset`,
		'yCharOffset' = `DevDescPtr_get_yCharOffset`,
		'yLineBias' = `DevDescPtr_get_yLineBias`,
		'ipr' = `DevDescPtr_get_ipr`,
		'cra' = `DevDescPtr_get_cra`,
		'gamma' = `DevDescPtr_get_gamma`,
		'canClip' = `DevDescPtr_get_canClip`,
		'canChangeGamma' = `DevDescPtr_get_canChangeGamma`,
		'canHAdj' = `DevDescPtr_get_canHAdj`,
		'startps' = `DevDescPtr_get_startps`,
		'startcol' = `DevDescPtr_get_startcol`,
		'startfill' = `DevDescPtr_get_startfill`,
		'startlty' = `DevDescPtr_get_startlty`,
		'startfont' = `DevDescPtr_get_startfont`,
		'startgamma' = `DevDescPtr_get_startgamma`,
		'deviceSpecific' = `DevDescPtr_get_deviceSpecific`,
		'displayListOn' = `DevDescPtr_get_displayListOn`,
		'canGenMouseDown' = `DevDescPtr_get_canGenMouseDown`,
		'canGenMouseMove' = `DevDescPtr_get_canGenMouseMove`,
		'canGenMouseUp' = `DevDescPtr_get_canGenMouseUp`,
		'canGenKeybd' = `DevDescPtr_get_canGenKeybd`,
		'gettingEvent' = `DevDescPtr_get_gettingEvent`,
		'hasTextUTF8' = `DevDescPtr_get_hasTextUTF8`,
		'wantSymbolUTF8' = `DevDescPtr_get_wantSymbolUTF8`,
		'useRotatedTextInContour' = `DevDescPtr_get_useRotatedTextInContour` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'DevDescPtr::left', 'DevDescPtr::right', 'DevDescPtr::bottom', 'DevDescPtr::top', 'DevDescPtr::clipLeft', 'DevDescPtr::clipRight', 'DevDescPtr::clipBottom', 'DevDescPtr::clipTop', 'DevDescPtr::xCharOffset', 'DevDescPtr::yCharOffset', 'DevDescPtr::yLineBias', 'DevDescPtr::ipr', 'DevDescPtr::cra', 'DevDescPtr::gamma', 'DevDescPtr::canClip', 'DevDescPtr::canChangeGamma', 'DevDescPtr::canHAdj', 'DevDescPtr::startps', 'DevDescPtr::startcol', 'DevDescPtr::startfill', 'DevDescPtr::startlty', 'DevDescPtr::startfont', 'DevDescPtr::startgamma', 'DevDescPtr::deviceSpecific', 'DevDescPtr::displayListOn', 'DevDescPtr::canGenMouseDown', 'DevDescPtr::canGenMouseMove', 'DevDescPtr::canGenMouseUp', 'DevDescPtr::canGenKeybd', 'DevDescPtr::gettingEvent', 'DevDescPtr::hasTextUTF8', 'DevDescPtr::wantSymbolUTF8', 'DevDescPtr::useRotatedTextInContour' ))
       if(is.na(idx))
        stop("no such field ", i, " in DevDesc. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
DevDescPtr_get_left <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_left',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_right <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_right',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_bottom <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_bottom',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_top <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_top',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_clipLeft <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_clipLeft',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_clipRight <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_clipRight',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_clipBottom <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_clipBottom',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_clipTop <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_clipTop',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_xCharOffset <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_xCharOffset',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_yCharOffset <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_yCharOffset',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_yLineBias <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_yLineBias',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_ipr <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_ipr',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_cra <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_cra',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_gamma <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_gamma',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canClip <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canClip',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canChangeGamma <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canChangeGamma',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canHAdj <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canHAdj',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startps <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startps',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startcol <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startcol',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startfill <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startfill',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startlty <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startlty',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startfont <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startfont',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_startgamma <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_startgamma',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_deviceSpecific <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_deviceSpecific',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_displayListOn <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_displayListOn',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canGenMouseDown <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canGenMouseDown',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canGenMouseMove <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canGenMouseMove',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canGenMouseUp <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canGenMouseUp',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_canGenKeybd <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_canGenKeybd',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_gettingEvent <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_gettingEvent',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_hasTextUTF8 <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_hasTextUTF8',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_wantSymbolUTF8 <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_wantSymbolUTF8',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_get_useRotatedTextInContour <-
function( x , copy = TRUE )
{
	.Call('R_DevDescPtr_get_useRotatedTextInContour',as(x, "DevDescPtr" ), as.integer(copy))
} 
DevDescPtr_set_left <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_left',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_right <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_right',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_bottom <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_bottom',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_top <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_top',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_clipLeft <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_clipLeft',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_clipRight <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_clipRight',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_clipBottom <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_clipBottom',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_clipTop <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_clipTop',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_xCharOffset <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_xCharOffset',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_yCharOffset <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_yCharOffset',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_yLineBias <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_yLineBias',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_ipr <-
function( x , value  )
{
    	value = as( value , 'numeric') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_DevDescPtr_set_ipr',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_cra <-
function( x , value  )
{
    	value = as( value , 'numeric') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_DevDescPtr_set_cra',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_gamma <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_gamma',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canClip <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canClip',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canChangeGamma <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canChangeGamma',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canHAdj <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_DevDescPtr_set_canHAdj',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startps <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_startps',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startcol <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_startcol',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startfill <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_startfill',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startlty <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_DevDescPtr_set_startlty',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startfont <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_DevDescPtr_set_startfont',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_startgamma <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_DevDescPtr_set_startgamma',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_deviceSpecific <-
function( x , value  )
{
    	value = as(value, 'RDevDescMethodsPtr')
    	.Call('R_DevDescPtr_set_deviceSpecific',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_displayListOn <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_displayListOn',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canGenMouseDown <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canGenMouseDown',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canGenMouseMove <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canGenMouseMove',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canGenMouseUp <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canGenMouseUp',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_canGenKeybd <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_canGenKeybd',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_gettingEvent <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_gettingEvent',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_hasTextUTF8 <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_hasTextUTF8',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_wantSymbolUTF8 <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_wantSymbolUTF8',as(x, "DevDescPtr" ), value)
} 
DevDescPtr_set_useRotatedTextInContour <-
function( x , value  )
{
    	value = as.logical(value)
    	.Call('R_DevDescPtr_set_useRotatedTextInContour',as(x, "DevDescPtr" ), value)
} 

setAs( "DevDesc" ,  "DevDescPtr" , 
function(from)
.Call('R_coerce_DevDesc_DevDescPtr', from )
)
setAs( "DevDescPtr" ,  "DevDesc" , 
function(from)
.Call('R_coerce_DevDescPtr_DevDesc', from)
) 
new_DevDesc <-
function( `left` , `right` , `bottom` , `top` , `clipLeft` , `clipRight` , `clipBottom` , `clipTop` , `xCharOffset` , `yCharOffset` , `yLineBias` , `ipr` , `cra` , `gamma` , `canClip` , `canChangeGamma` , `canHAdj` , `startps` , `startcol` , `startfill` , `startlty` , `startfont` , `startgamma` , `deviceSpecific` , `displayListOn` , `canGenMouseDown` , `canGenMouseMove` , `canGenMouseUp` , `canGenKeybd` , `gettingEvent` , `hasTextUTF8` , `wantSymbolUTF8` , `useRotatedTextInContour` , .finalizer = FALSE )
{
    ans = .Call('R_new_DevDesc')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_DevDescPtr_finalizer')
    
    if(!missing(`left`)) ans$`left` = `left`
    if(!missing(`right`)) ans$`right` = `right`
    if(!missing(`bottom`)) ans$`bottom` = `bottom`
    if(!missing(`top`)) ans$`top` = `top`
    if(!missing(`clipLeft`)) ans$`clipLeft` = `clipLeft`
    if(!missing(`clipRight`)) ans$`clipRight` = `clipRight`
    if(!missing(`clipBottom`)) ans$`clipBottom` = `clipBottom`
    if(!missing(`clipTop`)) ans$`clipTop` = `clipTop`
    if(!missing(`xCharOffset`)) ans$`xCharOffset` = `xCharOffset`
    if(!missing(`yCharOffset`)) ans$`yCharOffset` = `yCharOffset`
    if(!missing(`yLineBias`)) ans$`yLineBias` = `yLineBias`
    if(!missing(`ipr`)) ans$`ipr` = `ipr`
    if(!missing(`cra`)) ans$`cra` = `cra`
    if(!missing(`gamma`)) ans$`gamma` = `gamma`
    if(!missing(`canClip`)) ans$`canClip` = `canClip`
    if(!missing(`canChangeGamma`)) ans$`canChangeGamma` = `canChangeGamma`
    if(!missing(`canHAdj`)) ans$`canHAdj` = `canHAdj`
    if(!missing(`startps`)) ans$`startps` = `startps`
    if(!missing(`startcol`)) ans$`startcol` = `startcol`
    if(!missing(`startfill`)) ans$`startfill` = `startfill`
    if(!missing(`startlty`)) ans$`startlty` = `startlty`
    if(!missing(`startfont`)) ans$`startfont` = `startfont`
    if(!missing(`startgamma`)) ans$`startgamma` = `startgamma`
    if(!missing(`deviceSpecific`)) ans$`deviceSpecific` = `deviceSpecific`
    if(!missing(`displayListOn`)) ans$`displayListOn` = `displayListOn`
    if(!missing(`canGenMouseDown`)) ans$`canGenMouseDown` = `canGenMouseDown`
    if(!missing(`canGenMouseMove`)) ans$`canGenMouseMove` = `canGenMouseMove`
    if(!missing(`canGenMouseUp`)) ans$`canGenMouseUp` = `canGenMouseUp`
    if(!missing(`canGenKeybd`)) ans$`canGenKeybd` = `canGenKeybd`
    if(!missing(`gettingEvent`)) ans$`gettingEvent` = `gettingEvent`
    if(!missing(`hasTextUTF8`)) ans$`hasTextUTF8` = `hasTextUTF8`
    if(!missing(`wantSymbolUTF8`)) ans$`wantSymbolUTF8` = `wantSymbolUTF8`
    if(!missing(`useRotatedTextInContour`)) ans$`useRotatedTextInContour` = `useRotatedTextInContour`
    na = pmatch(names(args), names(getSlots('DevDesc')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
}


setMethod( 'duplicate' , c( 'DevDescPtr' ),       
function( x , ... , .finalizer = 'R_free_DevDescPtr_finalizer' )
{
.Call( 'R_duplicate_DevDesc' , x, NULL, .finalizer)
} )
 

#### </End of definition>
