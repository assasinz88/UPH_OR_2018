#A = x
#B = y

#0.5x + 0.5y <= 150
#0.6x + 0.4y <= 145
#x >= 30
#x <= 150
#y >= 40
#y <= 200

#Z = 8x + 10y

library(lpSolveAPI)

ex5 = make.lp(6,2)

set.column(ex5, 1, c(0.5,0.6,1,1,0,0))
set.column(ex5, 2, c(0.5, 0.4, 0, 0, 1, 1))

set.constr.type(ex5, c("<=","<=",">=","<=",">=","<="))
set.rhs(ex5, c(150,145,30,150,40,200))

set.objfn(ex5, c(8,10))
lp.control(ex5, sense='max')
solve(ex5)

get.objective(ex5)
get.variables(ex5)

plot(ex5)
