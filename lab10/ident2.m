function blad = ident2(X0)
load obiekt;
k = X0(1);
T1 = X0(2);
T2 = X0(3);
theta = X0(4);
t = 0:59;
model = tf([0 0 k], conv([T1 1], [T2 1]));
set(model, 'outputDelay', theta);
yModel = step(model, t);
e = y - yModel;
blad = sum(e.^2) / length(e);
plot(t, y, t, yModel)
end