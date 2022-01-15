if(!is.null(getClassDef('EnumValue'))) {
setClass('R_GE_lineend', contains = 'EnumValue', prototype = structure(as.integer(NA)))  #, names = "?"))
`R_GE_lineendValues` = EnumDef('R_GE_lineend', structure(as.integer(c(1,
2,
3)),
names = c("GE_ROUND_CAP",
"GE_BUTT_CAP",
"GE_SQUARE_CAP")))


setAs('numeric', 'R_GE_lineend', function(from)  asEnumValue(from, `R_GE_lineendValues`, 'R_GE_lineend', prefix = "GE_"))
setAs('character', 'R_GE_lineend', function(from)  asEnumValue(from, `R_GE_lineendValues`, 'R_GE_lineend', prefix = "GE_"))
setAs('integer', 'R_GE_lineend', function(from)  asEnumValue(from, `R_GE_lineendValues`, 'R_GE_lineend', prefix = "GE_"))


`GE_ROUND_CAP` <- GenericEnumValue('GE_ROUND_CAP', 1, 'R_GE_lineend')
`GE_BUTT_CAP` <- GenericEnumValue('GE_BUTT_CAP', 2, 'R_GE_lineend')
`GE_SQUARE_CAP` <- GenericEnumValue('GE_SQUARE_CAP', 3, 'R_GE_lineend')
}
#####################
