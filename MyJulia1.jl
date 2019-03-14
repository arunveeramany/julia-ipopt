
using Pkg
Pkg.activate(".")
Pkg.instantiate()
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
end
