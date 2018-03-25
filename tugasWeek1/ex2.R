#Product A = x
#Product B = y

#-0.2x + 0.8y <= 0
#x <= 100
#2x + 4y <= 240

#Z = 20x + 50y

library(lpSolveAPI)

ex2 = make.lp(3,2)


set.column(ex2, 1, c(-0.2, 1, 2))
set.column(ex2, 2, c(0.8,0,4))

set.constr.type(ex2, c("<=","<=","<="))
set.rhs(ex2, c(0,100,240))

set.objfn(ex2, c(20,50))
lp.control(ex2, sense='max')
solve(ex2)

get.objective(ex2)
get.variables(ex2)

plot(ex2)
