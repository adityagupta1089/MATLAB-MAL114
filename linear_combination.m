function lc = linear_combination(A,v)
if dependent(A)==false% if the vectors are independent
    A=[A v];% augmented matrix [v1 v2 v3 ... vn | v]
    [,c]=size(A);
    A=row_reduced_echleon_form(A);
    lc=A(:,c);% rightmost colum is our coefficients
else
    disp('Dependent');
end