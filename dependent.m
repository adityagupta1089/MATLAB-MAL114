function dep = dependent(A)
% sample input : dependent([1 2 -1 0;2 -1 1 -1;2 -1 3 1;3 -1 1 0])
% sample output: false
[r,c] = size(A);% finding rows of A
if get_rank(A)==min(r,c)% if it has full rank, i.e. rk(A)=min(r,c) since rk(A)<=min(r,c)
    dep=false;
else
    dep=true;
end
end