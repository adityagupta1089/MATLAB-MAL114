function [LDLI] = dependent(A)
[r,] = size(A);
if get_rank(A)==r
    LDLI=0;
else
    LDLI=1;
end
end