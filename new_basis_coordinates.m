function v = new_basis_coordinates( u,old_basis,new_basis )
% u2=a1b1+a2b2+...anbn, ai's are coeff. and bi's form old basis
u2=old_basis*u;
% now u2 = c1d1+c2d2+...cndn, ci's are coeff. and di's form new basis
% i.e. (d1 d2 ... dn)(c1 c2 ... cn)' = u2
v=gauss_jordan([new_basis u2]);
end