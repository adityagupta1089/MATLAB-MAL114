function B = basis_intersection(U,V)
% y=a1u1+a2u2+...anun=b1v1+b2v2+...bnvn
% a1u1+a2u2+...anun+b1(-v)+b2(-v2)+....bn(-vn)=0
% hence [U -V][a1 a2...an b1 b2... bn]'=0
A=[U -V];
% basis of (a1 a2 ... an b1 b2 ... bn)=0 is basis of null space of A
basis_ab = basis(A,'n');
% top half is basis of ai's
[r,~]=size(basis_ab);
basis_a = basis_ab(1:r/2,:);
% since y = sum of prod of ai*ui
basis_y = U*basis_a;
% remove dependent values
B = basis(basis_y,'r');
end