function basis = get_basis(X,type)
% type r->row, c->column, n->null
if type=='n'
    Y=row_reduced_echleon_form(X);
    [r,c]=size(X);
    basis=eye(c);
    free=[];
    for i=1:r
        for j=i:c
            if Y(i,j)~=0
                free=[free j];
                break;
            end
        end
    end
    basis(:,free)=[];
    Y(:,free)=[];
    basis(free,:)=-Y(1:length(free),:);
    return;
elseif type=='r'
    X=X';
end
[r,c]=size(X);
Y=row_reduced_echleon_form(X);
basis=[];
for i=1:r
    for j=i:c
        if Y(i,j)~=0
            basis=[basis X(:,i)];
        end
    end
end
if type=='r'
    basis=basis';
end
return;
end