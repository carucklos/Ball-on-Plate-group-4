%% 
syms s K1 K2 d2 d3 T
A = [K1+K2 -K2 0; -K2 ((d2*s)+K2) -d2*s; 0 -d2*s d3*s];
B = [T; 0; 0];
X = inv(A)*B;
X2 = X(2);
pretty(simplify(X2))
TF = X2 / T;

b = [0 K2*d3];
a = [K1*K2*d3 (-K1*d2^2)-(K2*d2^2)+(K1*d2*d3)+(K2*d2*d3)];
[A,B,C,D] = tf2ss(b,a)


