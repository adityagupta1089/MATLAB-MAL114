function [ P,D ] = jacobi_eigenvalue( A )
[n,~]=size(A);
P=eye(n);
while ~off_diag_neg(A);
    max=0;
    a=0;
    b=0;
    for i=2:n
        for j=1:i-1
            if abs(A(i,j))>max
                max=abs(A(i,j));
                a=i;
                b=j;
            end
        end
    end
    theta=0;
    if A(a,a)~=A(b,b)
        theta=0.5*atan(2*A(a,b)/(A(b,b)-A(a,a)));
    elseif A(a,a)==A(b,b)
        theta=pi/4;
    end
    Q=eye(n);
    Q([a,b],[a,b])=[cos(theta) sin(theta);-sin(theta) cos(theta)];
    P=P*Q;
    A=Q'*A*Q;
end
D=A;
end

function x = off_diag_neg(A)
[n,~]=size(A);
tol=1e-10;
 for i=2:n
        for j=1:i-1
            if abs(A(i,j))>tol
                x=0;
                return;
            end
        end
 end
    x=1;
end