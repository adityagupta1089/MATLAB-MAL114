function lc = linear_combination(A,v)
if dependent(A)==false% if the vectors are independent
    A=[A v];% augmented matrix [v1 v2 v3 ... vn | v]
    [r,c]=size(A);
    A=row_reduced_echleon_form(A);
    lc=A(1:r-1,c);% rightmost colum is our coefficients
    for i=1:r-1
        if(lc(i)~=0)
            break;
        end
    end
    disp('Dependent');
else
    disp('Dependent');
end