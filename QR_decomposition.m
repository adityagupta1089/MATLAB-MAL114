function [ Q,R ] = QR_decomposition( A )
Q=graham_schmidt_orthogonalization(A);
[~,c]=size(A);
for i=1:c
    Q(:,i)=Q(:,i)/norm(Q(:,i));
end
R=Q'*A;
end