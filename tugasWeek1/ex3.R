#Sheets = x
#Bar = y

#x <= 550
#y <= 580
#3x + 4y <= 2400

#Z = 40x + 35y

library(lpSolveAPI)

ex3 = make.lp(3,2)

set.column(ex3, 1, c(1,0,3))
set.column(ex3, 2, c(0,1,4))

set.constr.type(ex3, c("<=","<=","<="))
set.rhs(ex3, c(550,580,2400))

set.objfn(ex3, c(40,35))
lp.control(ex3, sense='max')
solve(ex3)

get.objective(ex3)
get.variables(ex3)

plot(ex3)
