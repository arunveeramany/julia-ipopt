using JuMP

using Pkg
Pkg.status()

using Ipopt
using Cbc
using GLPKMathProgInterface
using Gurobi


function MyJulia1(InFile1::String, InFile2::String, InFile3::String, InFile4::String, TimeLimitInSeconds::Int64, ScoringMethod::Int64, NetworkModel::String)
    println("running MyJulia1")
    println("  $(InFile1)")
    println("  $(InFile2)")
    println("  $(InFile3)")
    println("  $(InFile4)")
    println("  $(TimeLimitInSeconds)")
    println("  $(ScoringMethod)")
    println("  $(NetworkModel)")


m = Model(with_optimizer(Gurobi.Optimizer, OutputFlag=0))

@variable(m, x >=0)
@variable(m, y >=0)

@objective(m, Min, 10x + 26y)

@constraint(m, const1,  11x + 3y >=  21)
@constraint(m, const2,   6x + 20y >= 39)

status = optimize!(m)
println("Status = $status")

println("Optimal Objective Function value: ", JuMP.objective_value(m))
println("Optimal Solutions:")
println("x = ", getValue(x))
println("y = ", getValue(y))


end
