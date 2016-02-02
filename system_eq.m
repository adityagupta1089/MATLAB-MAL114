function system_eq(A,B)
[r,c]=size(A);
C=[A B];
ra=get_rank(A);
rc=get_rank(C);
if (ra==rc && rc==r)
    fprintf('Rank of A, %d = Rank of [A|B], %d = Number of rows in X, %d\n',ra,rc,r);
    disp('Unique Solution');
elseif (ra==rc &&rc<r)
    fprintf('Rank of A, %d = Rank of [A|B], %d < Number of rows in X, %d\n',ra,rc,r);
    disp('Infinitely many Solutions');
elseif (ra<rc)
    fprintf('Rank of A, %d < Rank of [A|B], %d\n',ra,rc);
    disp('No Solution')
end
end