# returns complex logarithm of z;
# handles case when imag(z) == -0.0
function clog(z::Complex)
    ang = angle(z)
    Complex(0.5*log(abs2(z)), imag(z) == zero(z.re) && ang < zero(z.re) ? -ang : ang)
end

# returns logarithm of x
function clog(x::Real)
    log(x)
end

# returns |ln(x)|^2 for all x
function ln_sqr(x::Float64)::Float64
    if x < zero(x)
        log(-x)^2 + pi^2
    elseif x == zero(x)
        Inf
    else
        log(x)^2
    end
end
