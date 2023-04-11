function dx = zbiornik_stan(t,x,wi,w,Ti,Q)

% Argumenty wejściowe:
% t czas
% x wektor stanu układu
% wi dopływ
% w wypływ
% Ti temperatura cieczy dopływającej
% Q moc dostarczana

x1=x(1);        %objętość
x2=x(2);        %temperatura

C=1820;         %ciepło własciwe [J/kg*K]
p=1000;         %gęstość

dx1 = 1/p*(wi-w);
dx2 = wi*(Ti-x2)/(p*x1)+Q/(p*x1*C);

dx = [dx1;dx2];

end