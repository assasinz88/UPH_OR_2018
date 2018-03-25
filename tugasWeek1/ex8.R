#Radio = x
#TV = y

#15x + 300y <= 10000
#x <= 400
#-x + 2y <= 0

#Z = x + 25y

library(lpSolveAPI)

ex8 = make.lp(3,2)

set.column(ex8, 1, c(15,1,-1))
set.column(ex8, 2, c(300, 0, 2))
set.constr.type(ex8, c("<=","<=","<="))
set.rhs(ex8, c(10000,400,0))

set.objfn(ex8, c(1,25))
lp.control(ex8, sense='max')
solve(ex8)

get.objective(ex8)
get.variables(ex8)

plot(ex8)