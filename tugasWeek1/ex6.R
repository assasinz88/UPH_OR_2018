#Grano = x1
#Wheatie = x2

#0.2x + 0.4y <= 60
#x <= 200
#y <= 120

#Z = x + 1.35y

library(lpSolveAPI)

ex6 = make.lp(3,2)

set.column(ex6, 1, c(0.2,1,0))
set.column(ex6, 2, c(0.4,0,1))
set.constr.type(ex6, c("<=","<=","<="))
set.rhs(ex6, c(60,200,120))

set.objfn(ex6, c(1,1.35))
lp.control(ex6, sense='max')
solve(ex6)

get.objective(ex6)
get.variables(ex6)

plot(ex6)