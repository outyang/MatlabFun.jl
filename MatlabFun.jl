function eye(::Type{T}, m::Integer, n::Integer) where T
    mab=min(m*n,m^2)
    A=zeros(T,m,n);
    for i=1:m+1:mab
        A[i]=oneunit(T);        
    end
    return A
end

eye(m::Integer,n::Integer) =eye(Float64, m, n)

eye(m::Integer) =eye(Float64,m,m)

function eye(::Type{T}, m::Integer) where T
    mab=min(m*m,m^2)
    A=zeros(T,m,m);
    for i=1:m+1:mab
        A[i]=oneunit(T);        
    end
    return A   
end

"""
# Example
eye(3)

eye(3,4)

eye(Int64,2,3)

"""
