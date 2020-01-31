clear;
clc;
%% HW2 2.1.1

%{

a1 = 1;
a2 = 0.5;
syms f(x1,x2)
f(x1,x2) = log(exp(a1*x1)+exp(a2*x2));
[X1,X2] = meshgrid(1:.25:5);
Z = f(X1,X2);
mesh( X1, X2, double(Z) );

%}

%% HW2 2.1.2

%{
p = 2/4;
syms f(x1,x2)
f(x1,x2) = (x1.^p+x2.^p) .^ (1/p);
%x1 = 1:.5:1e3;
[X1,X2] = meshgrid(.25:.5:25);
mesh(X1,X2,double(f(X1,X2)))
%}


%% HW 2.1.3
%{
n = 2;
syms f(x1,x2)
f(x1,x2) = (x1.^2+x2.^2) / ( (x1 * x2).^(1/n) );
[X1,X2] = meshgrid(.25:.5:25);
mesh(X1,X2,double(f(X1,X2)))
%}

%% HW2.1.4
%{
A = [1,2;3,6];
b = [4;5];
syms f(x1,x2)
f(x1,x2) = norm(A*[x1;x2]-b) / (1-norm([x1;x2]));
[X1,X2] = meshgrid(-.5:.1:.5);
mesh(X1,X2,double(f(X1,X2)))
%}

%% max
%{
x = [1;-1];
syms f(y1,y2)
f(y1,y2) = [y1,y2] * x - max(x);
[Y1,Y2] = meshgrid(-5:.1:5);
mesh(Y1,Y2,double(f(Y1,Y2)))
%}



