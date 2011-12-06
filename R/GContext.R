

#### <Start of definition>
if(!is.null(getClassDef('RCStructReference'))) {

setClass('R_GE_linejoinPtr', contains = 'RCStructReference', prototype = list(classes = 'R_GE_linejoinPtr'))

#setClass('R_GE_linejoin', contains = 'CStruct')



setClass('R_GE_lineendPtr', contains = 'RCStructReference', prototype = list(classes = 'R_GE_lineendPtr'))

#setClass('R_GE_lineend', contains = 'CStruct')



setClass('R_GE_gcontextPtr', contains = 'RCStructReference', prototype = list(classes = 'R_GE_gcontextPtr'))

setClass('R_GE_gcontext', representation(
   'col' = 'integer',
  'fill' = 'integer',
  'gamma' = 'numeric',
  'lwd' = 'numeric',
  'lty' = 'integer',
  'lend' = 'R_GE_lineend',
  'ljoin' = 'R_GE_linejoin',
  'lmitre' = 'numeric',
  'cex' = 'numeric',
  'ps' = 'numeric',
  'lineheight' = 'numeric',
  'fontface' = 'integer',
  'fontfamily' = 'character' ), contains = 'CStruct')


setMethod( 'names' , c( 'R_GE_gcontextPtr' ),       
function( x  )
{
    c(
     'col',
     'fill',
     'gamma',
     'lwd',
     'lty',
     'lend',
     'ljoin',
     'lmitre',
     'cex',
     'ps',
     'lineheight',
     'fontface',
     'fontfamily'
    )
} )
 
setMethod( '$' , c( 'R_GE_gcontextPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'col' = `R_GE_gcontextPtr_get_col`,
		'fill' = `R_GE_gcontextPtr_get_fill`,
		'gamma' = `R_GE_gcontextPtr_get_gamma`,
		'lwd' = `R_GE_gcontextPtr_get_lwd`,
		'lty' = `R_GE_gcontextPtr_get_lty`,
		'lend' = `R_GE_gcontextPtr_get_lend`,
		'ljoin' = `R_GE_gcontextPtr_get_ljoin`,
		'lmitre' = `R_GE_gcontextPtr_get_lmitre`,
		'cex' = `R_GE_gcontextPtr_get_cex`,
		'ps' = `R_GE_gcontextPtr_get_ps`,
		'lineheight' = `R_GE_gcontextPtr_get_lineheight`,
		'fontface' = `R_GE_gcontextPtr_get_fontface`,
		'fontfamily' = `R_GE_gcontextPtr_get_fontfamily` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in R_GE_gcontext. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'R_GE_gcontextPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'col' = `R_GE_gcontextPtr_set_col`,
		'fill' = `R_GE_gcontextPtr_set_fill`,
		'gamma' = `R_GE_gcontextPtr_set_gamma`,
		'lwd' = `R_GE_gcontextPtr_set_lwd`,
		'lty' = `R_GE_gcontextPtr_set_lty`,
		'lend' = `R_GE_gcontextPtr_set_lend`,
		'ljoin' = `R_GE_gcontextPtr_set_ljoin`,
		'lmitre' = `R_GE_gcontextPtr_set_lmitre`,
		'cex' = `R_GE_gcontextPtr_set_cex`,
		'ps' = `R_GE_gcontextPtr_set_ps`,
		'lineheight' = `R_GE_gcontextPtr_set_lineheight`,
		'fontface' = `R_GE_gcontextPtr_set_fontface`,
		'fontfamily' = `R_GE_gcontextPtr_set_fontfamily` )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in R_GE_gcontext. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'R_GE_gcontextPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'col' = `R_GE_gcontextPtr_get_col`,
		'fill' = `R_GE_gcontextPtr_get_fill`,
		'gamma' = `R_GE_gcontextPtr_get_gamma`,
		'lwd' = `R_GE_gcontextPtr_get_lwd`,
		'lty' = `R_GE_gcontextPtr_get_lty`,
		'lend' = `R_GE_gcontextPtr_get_lend`,
		'ljoin' = `R_GE_gcontextPtr_get_ljoin`,
		'lmitre' = `R_GE_gcontextPtr_get_lmitre`,
		'cex' = `R_GE_gcontextPtr_get_cex`,
		'ps' = `R_GE_gcontextPtr_get_ps`,
		'lineheight' = `R_GE_gcontextPtr_get_lineheight`,
		'fontface' = `R_GE_gcontextPtr_get_fontface`,
		'fontfamily' = `R_GE_gcontextPtr_get_fontfamily` )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'R_GE_gcontextPtr::col', 'R_GE_gcontextPtr::fill', 'R_GE_gcontextPtr::gamma', 'R_GE_gcontextPtr::lwd', 'R_GE_gcontextPtr::lty', 'R_GE_gcontextPtr::lend', 'R_GE_gcontextPtr::ljoin', 'R_GE_gcontextPtr::lmitre', 'R_GE_gcontextPtr::cex', 'R_GE_gcontextPtr::ps', 'R_GE_gcontextPtr::lineheight', 'R_GE_gcontextPtr::fontface', 'R_GE_gcontextPtr::fontfamily' ))
       if(is.na(idx))
        stop("no such field ", i, " in R_GE_gcontext. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
R_GE_gcontextPtr_get_col <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_col',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_fill <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_fill',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_gamma <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_gamma',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_lwd <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_lwd',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_lty <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_lty',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_lend <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_lend',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_ljoin <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_ljoin',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_lmitre <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_lmitre',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_cex <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_cex',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_ps <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_ps',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_lineheight <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_lineheight',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_fontface <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_fontface',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_get_fontfamily <-
function( x , copy = TRUE )
{
	.Call('R_R_GE_gcontextPtr_get_fontfamily',as(x, "R_GE_gcontextPtr" ), as.integer(copy))
} 
R_GE_gcontextPtr_set_col <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_R_GE_gcontextPtr_set_col',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_fill <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_R_GE_gcontextPtr_set_fill',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_gamma <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_gamma',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_lwd <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_lwd',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_lty <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_R_GE_gcontextPtr_set_lty',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_lend <-
function( x , value  )
{
    	value = asEnumValue( value , structure(1:3, .Names = c("GE_ROUND_CAP", "GE_BUTT_CAP", "GE_SQUARE_CAP"
	)) , class = "2690::R_GE_lineend" )
    	.Call('R_R_GE_gcontextPtr_set_lend',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_ljoin <-
function( x , value  )
{
    	value = asEnumValue( value , structure(1:3, .Names = c("GE_ROUND_JOIN", "GE_MITRE_JOIN", "GE_BEVEL_JOIN"
	)) , class = "2714::R_GE_linejoin" )
    	.Call('R_R_GE_gcontextPtr_set_ljoin',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_lmitre <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_lmitre',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_cex <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_cex',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_ps <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_ps',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_lineheight <-
function( x , value  )
{
    	value = as( value , 'numeric')
    	.Call('R_R_GE_gcontextPtr_set_lineheight',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_fontface <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_R_GE_gcontextPtr_set_fontface',as(x, "R_GE_gcontextPtr" ), value)
} 
R_GE_gcontextPtr_set_fontfamily <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 201 ) {
 	     value = fixArrayLength( value ,  201 )
 	    length( value ) <-  201 
	}


    	.Call('R_R_GE_gcontextPtr_set_fontfamily',as(x, "R_GE_gcontextPtr" ), value)
} 

setAs( "R_GE_gcontext" ,  "R_GE_gcontextPtr" , 
function(from)
.Call('R_coerce_R_GE_gcontext_R_GE_gcontextPtr', from )
)
setAs( "R_GE_gcontextPtr" ,  "R_GE_gcontext" , 
function(from)
.Call('R_coerce_R_GE_gcontextPtr_R_GE_gcontext', from)
) 
new_R_GE_gcontext <-
function( `col` , `fill` , `gamma` , `lwd` , `lty` , `lend` , `ljoin` , `lmitre` , `cex` , `ps` , `lineheight` , `fontface` , `fontfamily` , .finalizer = FALSE )
{
    ans = .Call('R_new_R_GE_gcontext')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
    	addFinalizer(ans, .finalizer, 'R_free_R_GE_gcontextPtr_finalizer')
    
    if(!missing(`col`)) ans$`col` = `col`
    if(!missing(`fill`)) ans$`fill` = `fill`
    if(!missing(`gamma`)) ans$`gamma` = `gamma`
    if(!missing(`lwd`)) ans$`lwd` = `lwd`
    if(!missing(`lty`)) ans$`lty` = `lty`
    if(!missing(`lend`)) ans$`lend` = `lend`
    if(!missing(`ljoin`)) ans$`ljoin` = `ljoin`
    if(!missing(`lmitre`)) ans$`lmitre` = `lmitre`
    if(!missing(`cex`)) ans$`cex` = `cex`
    if(!missing(`ps`)) ans$`ps` = `ps`
    if(!missing(`lineheight`)) ans$`lineheight` = `lineheight`
    if(!missing(`fontface`)) ans$`fontface` = `fontface`
    if(!missing(`fontfamily`)) ans$`fontfamily` = `fontfamily`
    na = pmatch(names(args), names(getSlots('R_GE_gcontext')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'R_GE_gcontextPtr' ),       
function( x , ... , .finalizer = 'R_free_R_GE_gcontextPtr_finalizer' )
{
.Call( 'R_duplicate_R_GE_gcontext' , x, NULL, .finalizer)
} )


}

#### </End of definition>
