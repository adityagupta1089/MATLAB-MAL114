function u = gram_schmidt_orthogonalization( v )
% Returns n orthogonal vectors from n independent vectors using gram
% schmidt orthogonalization
[~,c]=size(v);
u=zeros(size(v));
for i=1:c
    % as u_i = v_i - sum from j=1 to k-1 of proj(u_j,v_i)
    u(:,i)=v(:,i);
    for j=1:i-1
        u(:,i)=u(:,i)-proj(u(:,j),v(:,i));
    end
    % for orthonormalizaion u(:,i)=u(:,i)/norm(u(:,i));
end

