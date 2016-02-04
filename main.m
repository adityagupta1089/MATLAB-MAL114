clc
clear all
A=[1 2 1 3 1;2 1 5 -3 1;1 2 1 3 1;3 0 9 -9 1;1 1 2 0 1]; 
disp(A);
disp(rref(A));
disp(get_basis(A,'n'));