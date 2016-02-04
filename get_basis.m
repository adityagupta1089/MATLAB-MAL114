function basis = get_basis(X,type)
% type r->row, c->column, n->null
if type=='n'
   %TODO
elseif type=='r'
    X=X';
end
[r,c]=size(X);
Y=row_reduced_echleon_form(X);
j=1;
tol=1e-10;
basis=[];%basis set
k=1;
for i=1:r
    while abs(Y(i,j))<tol
        j=j+1;
        if(j>c)
            break;
        end
    end
    if (j<=c)
        basis(:,k)=X(:,j);
        k=k+1;
        j=j+1;
    end
    if j>=c
        if type=='r'
            basis=basis';
        end
        return;
    end
end