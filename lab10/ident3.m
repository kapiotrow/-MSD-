function blad = ident3(X0)
load obiekt;
k = X0(1);
T = X0(2);
global n;
t = 0:59;
for i = 1:n
    A(i) = -1/T;
end
model = zpk([], A, k/T^n);
yModel = step(model, t);
e = y - yModel;
blad = sum(e.^2) / length(e);
figure(n)
plot(t, y, t, yModel);
end