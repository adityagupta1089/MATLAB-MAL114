function val = system_of_equations(A,B)
% 0-> unique, 1->infinite, 2->no
[r,]=size(A);% finding number of rows
C=[A B];% augmented matrix [A|B]
ra=get_rank(A);% rank of A
rc=get_rank(C);%rank of B
if (ra==rc && rc==r)
    fprintf('Rank of A, %d = Rank of [A|B], %d = Number of rows in X, %d\n',ra,rc,r);
    disp('Unique Solution');
    val=0;
elseif (ra==rc &&rc<r)
    fprintf('Rank of A, %d = Rank of [A|B], %d < Number of rows in X, %d\n',ra,rc,r);
    disp('Infinitely many Solutions');
    val=1;
elseif (ra<rc)
    fprintf('Rank of A, %d < Rank of [A|B], %d\n',ra,rc);
    disp('No Solution')
    val=2;
end
end