function dep = dependent(A)
% sample input : dependent([1 2 -1 0;2 -1 1 -1;2 -1 3 1;3 -1 1 0])
% sample output: false
[r,] = size(A);% finding rows of A
if get_rank(A)==r% if rows are same as rank then it is independent
    dep=false;
else
    dep=true;
end
end