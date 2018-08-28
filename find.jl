function find(M::AbstractArray)
    n=M.>zero(eltype(M))
    return M[n]
end

function find(M::AbstractArray,k::Number)
    N=Array{Int64}(undef,0);
    for i=1:sizeof(M)
        if M[i]==k
            N=[N;i]
        end
    end
        return N
end

"""
A=rand(Int8,10)

find(A,A[3])
"""
