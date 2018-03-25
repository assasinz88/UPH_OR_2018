#10x + 5y <= 600
#6x + 20y <= 600
#8x + 10y <= 600
#z=2x+3y

#install.packages("lpSolveAPI")
library(lpSolveAPI)

ex1 = make.lp(3,2)

set.column(ex1, 1, c(10,6,8))
set.column(ex1, 2, c(5,20,10))
set.constr.type(ex1, c("<=","<=","<="))
set.rhs(ex1, c(600,600,600))

set.objfn(ex1, c(2,3))
lp.control(ex1,sense='max')
solve(ex1)

get.objective(ex1)
get.variables(ex1)

plot(ex1)