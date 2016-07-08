function pr = proj( u,v )
% return the projection of u on v proj(u,v)
%   pr = proj_u(v) = u*<v,u>/<u,u>
pr=dot(v,u)*u/dot(u,u);
end

