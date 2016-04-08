function x = is_positive_definite(A)
E=eig(A);
n=numel(A);
for i=1:n
    if A(i)<=0
        x=0;
        return;
    end
end
x=1;
end