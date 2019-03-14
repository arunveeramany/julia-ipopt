using Pkg
Pkg.activate(".")
Pkg.instantiate()
Pkg.status()

using Ipopt
using JSON

function MyJulia2(InFile1::String, InFile2::String, InFile3::String, InFile4::String, TimeLimitInSeconds::Int64, ScoringMethod::Int64, NetworkModel::String)
    println("running MyJulia2")
    println("$(InFile1) - $(typeof(InFile1))")
    println("$(InFile2) - $(typeof(InFile2))")
    println("$(InFile3) - $(typeof(InFile3))")
    println("$(InFile4) - $(typeof(InFile4))")
    println("$(TimeLimitInSeconds) - $(typeof(TimeLimitInSeconds))")
    println("$(ScoringMethod) - $(typeof(ScoringMethod))")
    println("$(NetworkModel) - $(typeof(NetworkModel))")
end
