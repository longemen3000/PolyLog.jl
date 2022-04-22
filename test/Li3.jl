@testset "li3" begin
    test_cmpl_function_on_data(z -> PolyLog.li3(z), joinpath(@__DIR__, "data", "Li3.txt"), 1e-14)
    test_real_function_on_data(z -> PolyLog.li3(z), joinpath(@__DIR__, "data", "Li3.txt"), 1e-14)

    @test PolyLog.li3(0.0) == 0.0
    @test PolyLog.li3(0.5) == 0.53721319360804020 # (-2*Pi^2*log(2) + 4*log(2)^3 + 21*zeta(3))/24
    @test PolyLog.li3(1.0) == 1.2020569031595943 # zeta(3)
    @test PolyLog.li3(-1.0) == -0.90154267736969571 # -3/4*zeta(3)
end
