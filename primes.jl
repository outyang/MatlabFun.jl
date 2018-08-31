function primes(n::Int64)

nlen=ceil(n/2);
nlen=convert(Int64,nlen)
p=trues(nlen);
q = length(p);
temp=sqrt(convert(Float64,n));
ua = floor(sqrt(n));
ub=convert(Int64,ua)
for k = 3:2:ub
  if p[div(k+1,2)]
     for i=div(k*k+1,2):k:q
         p[i] = false;
     end
  end
end
m=1:nlen;
p=m[p];
p=p.*2;
p=p.-1;      
p[1] = 2; 
return p
end

"""
primes(1000);
"""