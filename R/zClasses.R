#setClass('DevDescPtr', contains = 'RC++StructReference', prototype = list(classes = 'DevDescPtr'))
#setClass('R_GE_gcontextPtr', contains = 'RC++StructReference', prototype = list(classes = 'R_GE_gcontextPtr'))


validateRDevDescMethods =
 function(object)
{

 ans = c(
            checkNumFunParams(object@activate, 1, 'activate'),
            checkNumFunParams(object@circle, 5, 'circle'),
            checkNumFunParams(object@clip, 5, 'clip'),
            checkNumFunParams(object@close, 1, 'close'),
            checkNumFunParams(object@deactivate, 1, 'deactivate'),
            checkNumFunParams(object@locator, 3, 'locator'),
            checkNumFunParams(object@line, 6, 'line'),
            checkNumFunParams(object@metricInfo, 6, 'metricInfo'),
            checkNumFunParams(object@mode, 2, 'mode'),
            checkNumFunParams(object@newPage, 2, 'newPage'),
            checkNumFunParams(object@polygon, 5, 'polygon'),
            checkNumFunParams(object@polyline, 5, 'polyline'),
            checkNumFunParams(object@rect, 6, 'rect'),
            checkNumFunParams(object@size, 5, 'size'),
            checkNumFunParams(object@strWidth, 3, 'strWidth'),
            checkNumFunParams(object@text, 7, 'text'),
            checkNumFunParams(object@onExit, 1, 'onExit'),
            checkNumFunParams(object@getEvent, 2, 'getEvent'),
            checkNumFunParams(object@newFrameConfirm, 1, 'newFrameConfirm'),
            checkNumFunParams(object@textUTF8, 7, 'textUTF8'),
            checkNumFunParams(object@strWidthUTF8, 3, 'strWidthUTF8'),
            checkNumFunParams(object@initDevice, 1, 'initDevice')
     )
  if(length(ans))
	ans
  else
	 TRUE

}

setValidity('RDevDescMethods', validateRDevDescMethods)





