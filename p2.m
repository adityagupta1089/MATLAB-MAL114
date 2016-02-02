clc
clear all
A=[1 2 3;1 1 1;2 3 4];
B=[6;3;10];
[r,c]=size(A);
C=[A B];
ra=rank(A);
rc=rank(C);
if (ra==rc && rc==r)
    disp('Unique Solution');
elseif (ra==rc &&rc<r)
    disp('Infinitely many Solutions');
elseif (ra<rc)
    disp('No Solution')
end
