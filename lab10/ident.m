function blad = ident(X0)
load obiekt;
k = X0(1);
T = X0(2);
theta  =X0(3);
t = 0:59;
modelB = tf([0 k], [T 1]);
set(modelB, 'outputDelay', theta);
yModel = step(modelB, t);
e = y - yModel;
blad = sum(e.^2) / length(e);
plot(t, y, t, yModel);
end