using Aqua: Aqua
using ITensorMakie: ITensorMakie
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(ITensorMakie)
end
