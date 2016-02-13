function basis = get_basis(X,type)
% type r->row, c->column, n->null
if type=='n'
    Y=row_reduced_echleon_form(X);
    j=1;
    [r,c]=size(X);
    Z=eye(c);
    k=1;
    free=[];
    for i=1:r
        while Y(i,j)==0
            j=j+1;
            if(j>c)
                break;
            end            
        end
        if(j>c)
            break;
        end 
        free(k)=j;
        k=k+1;
    end
    for i=k-1:-1:1
        Z(:,free(i))=[];
        Y(:,free(i))=[];
    end
    u=1;
    for i=1:c
        if ismember(i,free)==1
            for j=1:c-k+1
                Z(i,j)=-Y(u,j);
            end
            u=u+1;
        end
    end
    basis=Z;
    return;
elseif type=='r'
    X=X';
end
[r,c]=size(X);
Y=row_reduced_echleon_form(X);
j=1;
basis=[];%basis set
k=1;
for i=1:r
    while Y(i,j)==0
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