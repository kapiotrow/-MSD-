load obiekt;

theta1=2.0541;
k1=2.1292;
T1=20.2428;
T2=2.2492;
t1=0:59;

modelB3=tf([0 0 k1], [T1*T2 T1+T2 1]); %transmitancja
set(modelB3, 'outputDelay', theta1); %opóźnienie modelu o theta
yModel1=step(modelB3,t1); %odpowiedź modelu na skok jednostkowy w czasie t
plot(t1,y,t1,yModel1);
grid on;

e1=y-yModel1; %wektor błędów
RMS=sum(e1.^2)/length(e1); %znormalizowany błąd średniokwadratowy
RMS;