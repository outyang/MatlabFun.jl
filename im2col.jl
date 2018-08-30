function im2col(a::Array{T}, block::Array{Int64}) where T
ma,na = size(a);
m = block[1]; 
n = block[2];
mc = block[1]; 
nc = ma-m+1; 
nn = na-n+1;
cidx= 0:mc-1;
ridx = reshape(1:nc,1,nc);
t=repeat(cidx,1,nc)+repeat(ridx,mc,1);
tt = zeros(Int64,mc*n,nc);
rows = 1:mc;
for i=0:n-1
    tt[i*mc.+rows,:]= t.+(ma*i);
end
ttt = zeros(Int64,mc*n,nc*nn);
cols = 1:nc;
for j=0:nn-1
    ttt[:,j*nc.+cols]= tt.+ma*j;
end
b=a[ttt]
    return b
end

'''
A=rand(Int8,300,300);

im2col(A,[3,3]);
'''