"""
    reli1(x::Real)

Returns the real part of the 1st order polylogarithm
``\\Re[\\operatorname{Li}_1(x)] = -\\Re[\\ln(1 - z)]`` of a real number
``x`` of type `Real`.

Author: Alexander Voigt

License: MIT

# Example
```jldoctest; setup = :(using PolyLog)
julia> reli1(0.5)
0.6931471805599453
```
"""
function reli1(x::Real)
    if x < one(x)
        -log(one(x) - x)
    elseif x == one(x)
        Inf
    else # x > 1
        -log(x - one(x))
    end
end

"""
    li1(z::Complex)

Returns the complex 1st order polylogarithm
``\\operatorname{Li}_1(z) = -\\ln(1 - z)`` of a complex number
``z`` of type `Complex`.

If only real arguments ``z\\in\\mathbb{R}`` are considered and one is
interested only in the real part, ``\\Re[\\operatorname{Li}_1(z)]``,
refer to the function [`reli1`](@ref), which may be a faster
alternative.

See also [`reli1`](@ref).

Author: Alexander Voigt

License: MIT

# Example
```jldoctest; setup = :(using PolyLog)
julia> li1(1.0 + 1.0im)
-0.0 + 1.5707963267948966im
```
"""
li1(z::Complex) = -clog(one(z) - z)

li1(z::Real) = li1(Complex(z))
