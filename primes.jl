function primes2(maxn::Int64)
    half = cld(maxn, 2)
    p = trues(half)
    for i = 3:2:isqrt(maxn)
        if p[div(i + 1, 2)]
            for j = div(i^2 + 1, 2):i:half
                p[j] = false
            end
        end
    end
    p = (1:half)[p]
    p .*= 2
    p .-= 1
    p[1] = 2
    return p
end

"""
primes(1000);
"""