#Type 1 = x
#Type 2 = y

#x <= 150
#y <= 200
#2x + y <= 400

#Z = 8x + 5y

library(lpSolveAPI)

ex7 = make.lp(3,2)

set.column(ex7, 1, c(1,0,2))
set.column(ex7, 2, c(0,1,1))
set.constr.type(ex7, c("<=","<=","<="))
set.rhs(ex7, c(150,200,400))

set.objfn(ex7, c(8,5))
lp.control(ex7, sense='max')
solve(ex7)

get.objective(ex7)
get.variables(ex7)

plot(ex7)