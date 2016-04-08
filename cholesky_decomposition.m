function L = cholesky_decomposition(A)
[~,n]=size(A);
L=zeros(n,n);
if is_symmetric(A)==0||is_positive_definite(A)==0
    disp('L cannot not be found out');
    return;
end
for i=1:n
    for j=1:i
        if i==j
            L(i,j)=sqrt(A(i,j)-sum(L(i,1:j-1).^2));
        else
            L(i,j)=(A(i,j)-sum(L(i,1:j-1).*L(j,1:j-1)))/L(j,j);
        end
    end
end
end