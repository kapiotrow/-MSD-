k = 2;
T = 9; 
T1 = 8;
k1 = 5;
T11 = 6;
T21 = 3;

licz = [0, k];
mian = [T, 1];
licz1 = [0, k1];
mian1 = [T1, 1];

obj = tf(licz, mian);
obj1 = tf(licz1, mian1);
t = 0:0.1:20;
y = step(obj, t);
y1 = step(obj1, t);
plot(y, t, y1, t)