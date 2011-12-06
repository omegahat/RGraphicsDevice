if(!is.null(getClassDef('EnumValue'))) {
setClass('R_GE_linejoin', contains = 'EnumValue')
`R_GE_linejoinValues` = EnumDef('R_GE_linejoin', structure(as.integer(c(1,
2,
3)),
names = c("GE_ROUND_JOIN",
"GE_MITRE_JOIN",
"GE_BEVEL_JOIN")))


setAs('numeric', 'R_GE_linejoin', function(from)  asEnumValue(from, `R_GE_linejoinValues`, 'R_GE_linejoin', prefix = "GE_"))
setAs('character', 'R_GE_linejoin', function(from)  asEnumValue(from, `R_GE_linejoinValues`, 'R_GE_linejoin', prefix = "GE_"))
setAs('integer', 'R_GE_linejoin', function(from)  asEnumValue(from, `R_GE_linejoinValues`, 'R_GE_linejoin', prefix = "GE_"))


`GE_ROUND_JOIN` <- GenericEnumValue('GE_ROUND_JOIN', 1, 'R_GE_linejoin')
`GE_MITRE_JOIN` <- GenericEnumValue('GE_MITRE_JOIN', 2, 'R_GE_linejoin')
`GE_BEVEL_JOIN` <- GenericEnumValue('GE_BEVEL_JOIN', 3, 'R_GE_linejoin')
}
#####################
