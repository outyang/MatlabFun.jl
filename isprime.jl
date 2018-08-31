function isprime(n::Int64)
p=false;
if n<1
    error("no less then 1")
elseif n==2
    p=true;
elseif n>2 && n % 2 ==1 && n <10^15
    temp=sqrt(convert(Float64,n));
    ua = floor(sqrt(n));
    ub=convert(Int64,ua);
    i=3;
    ub=max(3,ub)
    kth=last(3:2:ub);
    while i < kth
        if rem(n,i)==0
            break;
        end
        i+=2;    
    end
    if i==kth && rem(n,i) != 0
        p=true;
    else
        println(i,' ',ub,' ',last(3:2:ub),' ',rem(n,i))
    end
end
 return p   
end    

"""
isprime(2^31-1)
"""