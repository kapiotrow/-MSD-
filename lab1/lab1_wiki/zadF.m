function [  ] = zadF( delta )
%
N=floor(4*pi/delta);
Xs=linspace(0,N*delta,N+1);
if Xs(N) ~= 4*pi
    Xs(N+1)=4*pi
end;
 
for i=1:length(Xs)
Ys(i)=((sin(Xs(i)))^2+2*sin(Xs(i)))*(cos(Xs(i)))^2;

end;
 
plot(Xs,Ys);
end