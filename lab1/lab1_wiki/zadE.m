function [ ] = zadE(  )
%
wlm=[1,4,-18,-12,9];
R=roots(wlm);
ezplot('x^4+4*x^3-18*x^2-12*x+9',[-6.5,3.5]);

hold on;
YR=zeros(length(R),1);
scatter(R,YR);
hold off;
 
end