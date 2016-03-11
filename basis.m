function basis = basis(X,type)
% type r->row, c->column, n->null
if type=='n'
    % for null space we find rref of X
    Y=row_reduced_echleon_form(X);
    [r,c]=size(X);
    % since the free elements have corresponding entry at (i,i) as 1
    % we will create identity matrix and keep those columns with lead
    % variables.
    basis=eye(c);
    % we find leading variables, i.e. columns with pivot
    lead=[];
    for i=1:r
        for j=i:c
            if Y(i,j)~=0 % if this column has pivot
                lead=[lead j];% add its index to list of leading columns
                break;% since each row has only one pivot we break when we find one
            end
        end
    end
    % we remove leading columns from both basis and rref
    basis(:,lead)=[];
    Y(:,lead)=[];
    % instead we know that leading columns have coefficient corresponding to a specific free vairable equal to
    % negative times the entry in rref at that free element's column and
    % that leading variables/pivot's row
    basis(lead,:)=-Y(1:length(lead),:);
    return;
elseif type=='r'
    % for row space we transpose
    X=X';
end
[r,c]=size(X);
Y=row_reduced_echleon_form(X);
basis=[];
for i=1:r
    for j=i:c
        if Y(i,j)~=0
            % for every pivot column take the original vector(in that column)
                basis=[basis X(:,j)];
            break;
        end
    end
end
if type == 'r'
    basis=basis';
end
end