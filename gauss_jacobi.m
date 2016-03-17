function [s,n] = gauss_jacobi(A,B,x,T,p)
% Ax=B, T is tolerance, x is initial approximation, s is soltuion, p is
% p-norm
[~,c]=size(A);
n=0;
while norm(B-A*x,p)>=T
    n=n+1;
for i=1:c
    s(i,1)=(B(i,1)-sum(A(i,:)*x(:,1))+A(i,i)*x(i,1))/A(i,i);
end
    x=s;
end
end