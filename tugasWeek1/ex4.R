#Practical = x
#Humanistic = y

#x + y <= 30
#x >= 10
#y >= 10

#Z = 1500x + 1000y

library(lpSolveAPI)

ex4 = make.lp(3,2)

set.column(ex4, 1, c(1,1,0))
set.column(ex4, 2, c(1,0,1))

set.constr.type(ex4, c("<=",">=",">="))
set.rhs(ex4, c(30,10,10))

set.objfn(ex4, c(1500,1000))
lp.control(ex4, sense='max')
solve(ex4)

get.objective(ex4)
get.variables(ex4)

plot(ex4)
