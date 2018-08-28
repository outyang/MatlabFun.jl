function eye(::Type{T}, m::Integer, n::Integer) where T
    mab=min(m*n,m^2)
    A=zeros(T,m,n);
    for i=1:m+1:mab
        A[i]=oneunit(T);        
    end
    return A
end

function eye(m::Integer,n::Integer) where T
    A=eye(Float64,m,n);
    return A
end

function eye(::Type{T}, m::Integer) where T
    n=m;
    A=eye(T,m,n);
    return A
end

function eye(m::Integer) where T
    n=m;
    A=eye(Float64,m,n);
    return A
end
"""
# Example
eye(3)

eye(3,3)

eye(Int64,2,3)

"""