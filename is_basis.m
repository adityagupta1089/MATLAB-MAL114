function isbasis = is_basis(A)
% sample input : is_basis([1 2 -1 0;2 -1 1 -1;2 -1 3 1;3 -1 1 0])
% sample output: 1 (is a basis)
if dependent(A)==false
    isbasis=true;
else
    isbasis=false;
end