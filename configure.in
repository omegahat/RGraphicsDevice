AC_INIT(src/Makevars.in)

R=$R_HOME/bin/R

AUTO_GEN_INC=`echo "cat(system.file('include', package = 'RAutoGenRunTime'), '\n')" | ${R} --vanilla --slave --quiet`

# Replace the spaces (' ') with '\ '. Could do this in R!
AUTO_GEN_INC=`echo $AUTO_GEN_INC | sed -e 's/ /\\\\ /g'`

AC_SUBST(AUTO_GEN_INC)

echo "AUTO_GEN_INC:  $AUTO_GEN_INC"

AC_OUTPUT(src/Makevars)


