function rank = get_rank(A)
A=row_reduced_echleon_form(A);% find the rref
[r,c]=size(A);% size of A
rank=0;%initialize rank as 0
error=1e-10;%error which is required to treat values such as 1e-16 as 0
for i=1:r
    zerorow=true;% suppose the row is zero all
    for j=1:c
        if abs(A(i,j))>=error% if we find a non zero row then our assumption is false
           zerorow=false;
           break;
        end
    end
    if(zerorow)% if it is all zero then end, since further rows will also be all zero
        break;
    else
        rank=rank+1;% increase the rank otherwise if the row is non zero
    end
end
end