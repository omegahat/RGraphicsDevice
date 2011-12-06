#### <Start of definition>

if(is.null(getClassDef('RC++StructReference')))
  setClass('RC++StructReference', representation(ref = 'externalptr', classes = "character"))

if(is.null(getClassDef('CStruct')))
  setClass("CStruct", contains = "VIRTUAL")

setClass('RDevDescMethodsPtr', contains = 'RC++StructReference', prototype = list(classes = 'RDevDescMethodsPtr'))

setClass('RDevDescMethods', representation(
   'activate' = 'FunctionOrNULL',
  'circle' = 'FunctionOrNULL',
  'clip' = 'FunctionOrNULL',
  'close' = 'FunctionOrNULL',
  'deactivate' = 'FunctionOrNULL',
  'locator' = 'FunctionOrNULL',
  'line' = 'FunctionOrNULL',
  'metricInfo' = 'FunctionOrNULL',
  'mode' = 'FunctionOrNULL',
  'newPage' = 'FunctionOrNULL',
  'polygon' = 'FunctionOrNULL',
  'polyline' = 'FunctionOrNULL',
  'rect' = 'FunctionOrNULL',
  'size' = 'FunctionOrNULL',
  'strWidth' = 'FunctionOrNULL',
  'text' = 'FunctionOrNULL',
  'onExit' = 'FunctionOrNULL',
  'getEvent' = 'FunctionOrNULL',
  'newFrameConfirm' = 'FunctionOrNULL',
  'textUTF8' = 'FunctionOrNULL',
  'strWidthUTF8' = 'FunctionOrNULL',
  'initDevice' = 'FunctionOrNULL',
  'GEInitDevice' = 'FunctionOrNULL',                                           
  'state' = "ANY"),  # or should this be RDevDescMethods specifically, allowing only for sub-classes.
         contains = 'CStruct')


setMethod( 'names' , c( 'RDevDescMethodsPtr' ),       
function( x  )
{
    c(
         'activate',
     'circle',
     'clip',
     'close',
     'deactivate',
     'locator',
     'line',
     'metricInfo',
     'mode',
     'newPage',
     'polygon',
     'polyline',
     'rect',
     'size',
     'strWidth',
     'text',
     'onExit',
     'getEvent',
     'newFrameConfirm',
     'textUTF8',
     'strWidthUTF8',
     'state'
    )
} )
 
setMethod( '$' , c( 'RDevDescMethodsPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'activate' = `RDevDescMethodsPtr_get_activate`,
		'circle' = `RDevDescMethodsPtr_get_circle`,
		'clip' = `RDevDescMethodsPtr_get_clip`,
		'close' = `RDevDescMethodsPtr_get_close`,
		'deactivate' = `RDevDescMethodsPtr_get_deactivate`,
		'locator' = `RDevDescMethodsPtr_get_locator`,
		'line' = `RDevDescMethodsPtr_get_line`,
		'metricInfo' = `RDevDescMethodsPtr_get_metricInfo`,
		'mode' = `RDevDescMethodsPtr_get_mode`,
		'newPage' = `RDevDescMethodsPtr_get_newPage`,
		'polygon' = `RDevDescMethodsPtr_get_polygon`,
		'polyline' = `RDevDescMethodsPtr_get_polyline`,
		'rect' = `RDevDescMethodsPtr_get_rect`,
		'size' = `RDevDescMethodsPtr_get_size`,
		'strWidth' = `RDevDescMethodsPtr_get_strWidth`,
		'text' = `RDevDescMethodsPtr_get_text`,
		'onExit' = `RDevDescMethodsPtr_get_onExit`,
		'getEvent' = `RDevDescMethodsPtr_get_getEvent`,
		'newFrameConfirm' = `RDevDescMethodsPtr_get_newFrameConfirm`,
		'textUTF8' = `RDevDescMethodsPtr_get_textUTF8`,
		'strWidthUTF8' = `RDevDescMethodsPtr_get_strWidthUTF8`,
		'state' = `RDevDescMethodsPtr_get_state`      
      )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in RDevDescMethods. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x)
} )
 
setMethod( '$<-' , c( 'RDevDescMethodsPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'activate' = `RDevDescMethodsPtr_set_activate`,
		'circle' = `RDevDescMethodsPtr_set_circle`,
		'clip' = `RDevDescMethodsPtr_set_clip`,
		'close' = `RDevDescMethodsPtr_set_close`,
		'deactivate' = `RDevDescMethodsPtr_set_deactivate`,
		'locator' = `RDevDescMethodsPtr_set_locator`,
		'line' = `RDevDescMethodsPtr_set_line`,
		'metricInfo' = `RDevDescMethodsPtr_set_metricInfo`,
		'mode' = `RDevDescMethodsPtr_set_mode`,
		'newPage' = `RDevDescMethodsPtr_set_newPage`,
		'polygon' = `RDevDescMethodsPtr_set_polygon`,
		'polyline' = `RDevDescMethodsPtr_set_polyline`,
		'rect' = `RDevDescMethodsPtr_set_rect`,
		'size' = `RDevDescMethodsPtr_set_size`,
		'strWidth' = `RDevDescMethodsPtr_set_strWidth`,
		'text' = `RDevDescMethodsPtr_set_text`,
		'onExit' = `RDevDescMethodsPtr_set_onExit`,
		'getEvent' = `RDevDescMethodsPtr_set_getEvent`,
		'newFrameConfirm' = `RDevDescMethodsPtr_set_newFrameConfirm`,
		'textUTF8' = `RDevDescMethodsPtr_set_textUTF8`,
		'strWidthUTF8' = `RDevDescMethodsPtr_set_strWidthUTF8`,
                'state' = `RDevDescMethodsPtr_set_state`      )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in RDevDescMethods. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'RDevDescMethodsPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'activate' = `RDevDescMethodsPtr_get_activate`,
		'circle' = `RDevDescMethodsPtr_get_circle`,
		'clip' = `RDevDescMethodsPtr_get_clip`,
		'close' = `RDevDescMethodsPtr_get_close`,
		'deactivate' = `RDevDescMethodsPtr_get_deactivate`,
		'locator' = `RDevDescMethodsPtr_get_locator`,
		'line' = `RDevDescMethodsPtr_get_line`,
		'metricInfo' = `RDevDescMethodsPtr_get_metricInfo`,
		'mode' = `RDevDescMethodsPtr_get_mode`,
		'newPage' = `RDevDescMethodsPtr_get_newPage`,
		'polygon' = `RDevDescMethodsPtr_get_polygon`,
		'polyline' = `RDevDescMethodsPtr_get_polyline`,
		'rect' = `RDevDescMethodsPtr_get_rect`,
		'size' = `RDevDescMethodsPtr_get_size`,
		'strWidth' = `RDevDescMethodsPtr_get_strWidth`,
		'text' = `RDevDescMethodsPtr_get_text`,
		'onExit' = `RDevDescMethodsPtr_get_onExit`,
		'getEvent' = `RDevDescMethodsPtr_get_getEvent`,
		'newFrameConfirm' = `RDevDescMethodsPtr_get_newFrameConfirm`,
		'textUTF8' = `RDevDescMethodsPtr_get_textUTF8`,
		'strWidthUTF8' = `RDevDescMethodsPtr_get_strWidthUTF8`,
		'state' = `RDevDescMethodsPtr_get_state`      
              )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'RDevDescMethodsPtr::activate', 'RDevDescMethodsPtr::circle', 'RDevDescMethodsPtr::clip', 'RDevDescMethodsPtr::close', 'RDevDescMethodsPtr::deactivate', 'RDevDescMethodsPtr::locator', 'RDevDescMethodsPtr::line', 'RDevDescMethodsPtr::metricInfo', 'RDevDescMethodsPtr::mode', 'RDevDescMethodsPtr::newPage', 'RDevDescMethodsPtr::polygon', 'RDevDescMethodsPtr::polyline', 'RDevDescMethodsPtr::rect', 'RDevDescMethodsPtr::size', 'RDevDescMethodsPtr::strWidth', 'RDevDescMethodsPtr::text', 'RDevDescMethodsPtr::onExit', 'RDevDescMethodsPtr::getEvent', 'RDevDescMethodsPtr::newFrameConfirm', 'RDevDescMethodsPtr::textUTF8', 'RDevDescMethodsPtr::strWidthUTF8', 'RDevDescMethodsPtr::state' ))
       if(is.na(idx))
        stop("no such field ", i, " in RDevDescMethods. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
RDevDescMethodsPtr_get_activate <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_activate',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_circle <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_circle',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_clip <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_clip',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_close <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_close',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_deactivate <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_deactivate',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_locator <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_locator',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_line <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_line',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_metricInfo <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_metricInfo',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_mode <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_mode',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_newPage <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_newPage',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_polygon <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_polygon',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_polyline <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_polyline',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_rect <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_rect',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_size <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_size',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_strWidth <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_strWidth',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_text <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_text',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_onExit <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_onExit',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_getEvent <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_getEvent',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_newFrameConfirm <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_newFrameConfirm',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_get_textUTF8 <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_textUTF8',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
}

RDevDescMethodsPtr_get_state <-
function( x )
{
	.Call('R_RDevDescMethodsPtr_get_state',as(x, "RDevDescMethodsPtr" ))
} 

RDevDescMethodsPtr_get_strWidthUTF8 <-
function( x , copy = TRUE )
{
	.Call('R_RDevDescMethodsPtr_get_strWidthUTF8',as(x, "RDevDescMethodsPtr" ), as.integer(copy))
} 
RDevDescMethodsPtr_set_activate <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_activate',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_circle <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_circle',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_clip <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_clip',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_close <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_close',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_deactivate <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_deactivate',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_locator <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_locator',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_line <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_line',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_metricInfo <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_metricInfo',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_mode <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_mode',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_newPage <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_newPage',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_polygon <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_polygon',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_polyline <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_polyline',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_rect <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_rect',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_size <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_size',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_strWidth <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_strWidth',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_text <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_text',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_onExit <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_onExit',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_getEvent <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_getEvent',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_newFrameConfirm <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_newFrameConfirm',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_textUTF8 <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_textUTF8',as(x, "RDevDescMethodsPtr" ), value)
} 
RDevDescMethodsPtr_set_strWidthUTF8 <-
function( x , value  )
{
    	value = as(value, 'FunctionOrNULL')
    	.Call('R_RDevDescMethodsPtr_set_strWidthUTF8',as(x, "RDevDescMethodsPtr" ), value)
}

RDevDescMethodsPtr_set_state <-
function( x , value  )
{
    	.Call('R_RDevDescMethodsPtr_set_state',as(x, "RDevDescMethodsPtr" ), value)
} 

setAs( "RDevDescMethods" ,  "RDevDescMethodsPtr" , 
function(from)
.Call('R_coerce_RDevDescMethods_RDevDescMethodsPtr', from )
)
setAs( "RDevDescMethodsPtr" ,  "RDevDescMethods" , 
function(from)
.Call('R_coerce_RDevDescMethodsPtr_RDevDescMethods', from)
) 
new_RDevDescMethods <-
function( `activate` , `circle` , `clip` , `close` , `deactivate` , `locator` , `line` , `metricInfo` , `mode` , `newPage` , `polygon` , `polyline` , `rect` , `size` , `strWidth` , `text` , `onExit` , `getEvent` , `newFrameConfirm` , `textUTF8` , `strWidthUTF8` , .finalizer = FALSE )
{
    ans = .Call('R_new_RDevDescMethods')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_RDevDescMethodsPtr_finalizer')
    
    if(!missing(`activate`)) ans$`activate` = `activate`
    if(!missing(`circle`)) ans$`circle` = `circle`
    if(!missing(`clip`)) ans$`clip` = `clip`
    if(!missing(`close`)) ans$`close` = `close`
    if(!missing(`deactivate`)) ans$`deactivate` = `deactivate`
    if(!missing(`locator`)) ans$`locator` = `locator`
    if(!missing(`line`)) ans$`line` = `line`
    if(!missing(`metricInfo`)) ans$`metricInfo` = `metricInfo`
    if(!missing(`mode`)) ans$`mode` = `mode`
    if(!missing(`newPage`)) ans$`newPage` = `newPage`
    if(!missing(`polygon`)) ans$`polygon` = `polygon`
    if(!missing(`polyline`)) ans$`polyline` = `polyline`
    if(!missing(`rect`)) ans$`rect` = `rect`
    if(!missing(`size`)) ans$`size` = `size`
    if(!missing(`strWidth`)) ans$`strWidth` = `strWidth`
    if(!missing(`text`)) ans$`text` = `text`
    if(!missing(`onExit`)) ans$`onExit` = `onExit`
    if(!missing(`getEvent`)) ans$`getEvent` = `getEvent`
    if(!missing(`newFrameConfirm`)) ans$`newFrameConfirm` = `newFrameConfirm`
    if(!missing(`textUTF8`)) ans$`textUTF8` = `textUTF8`
    if(!missing(`strWidthUTF8`)) ans$`strWidthUTF8` = `strWidthUTF8`
    na = pmatch(names(args), names(getSlots('RDevDescMethods')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
}


if(!isGeneric('duplicate'))
 setGeneric("duplicate", function(x, ..., .finalizer = FALSE)
            standardGeneric("duplicate"))

setMethod( 'duplicate' , c( 'RDevDescMethodsPtr' ),       
function( x , ... , .finalizer = 'R_free_RDevDescMethodsPtr_finalizer' )
{
.Call( 'R_duplicate_RDevDescMethods' , x, NULL, .finalizer)
} )
 

#### </End of definition>
