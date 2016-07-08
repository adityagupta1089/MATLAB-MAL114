function D = QR_eigenvalue(A)
while ~upper(A)
    [Q,R] = QR_decomposition(A);
    A=R*Q;
end
[n,~]=size(A);
for i=1:n
    D(i,1)=A(i,i);
end
end

function is_upper = upper(A)
tol=1e-5;
[r,~]=size(A);
for i=2:r
    for j=1:i-1
        if abs(A(i,j))>tol
            is_upper=0;
            return;
        end
    end
end
is_upper=1;
end