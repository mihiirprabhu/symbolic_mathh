%Variables, Expressions, Functions and Equations
pi/6 + pi/4
sym(pi/6) + sym(pi/4)
vpa(pi/6) + vpa(pi/4)
%
syms x y 
log(x) + exp(y)
%
y(x) = piecewise(x<0, -1, x>0, 1)
%
syms f(x)
f(x) = x^4-2*x^3+6*x^2-2*x+10
f(-5)
%
syms y1 y2
y1 = x+3; y2 = 3*x;
solve(y1 == y2)
%
syms x
solve(x^4 == 1)
assume(x,'real')
assumeAlso( x > 0)
assumptions(x)
solve(x^4 == 1)
assume(x,'clear')
%Substitution and Solving
syms x xo
subs(x^2+1,x,xo-1)
%
syms a b c
subs(cos(a) + sin(b) - exp(2*c), [a b c], [pi/2 pi/4 -1])
solve(9*x^2 - 1 == 0)
%
eqn = a*x^2 + b*x + c == 0;
sol = solve(eqn) 
subs(sol,[a b c],[9 0 -1])
%
syms x f(x)
assume(x>0)
f(x) = 6*x^7-2*x^6+3*x^3-8;
fplot(f)
xlim([-10 10])
ylim([-1e3 1e3])
doubleSol = roots([-8 3 -2 6]) 
symsSol = solve(f) 
vpaSol = vpasolve(f) 
%Simplification and Manipulation
simplify((x - 1)*(x + 1)*(x^2 + x + 1)*(x^2 + 1)*(x^2 - x + 1)*(x^4 - x^2 + 1))
%
combine(2*sin(x)*cos(x) + (1- cos(2*x))/2 + cos(x)^2,'sincos')
%
syms x y
factor(y^6-x^6)
f(x) = (x^3 + 7);
expand(f(y-1))
%
f(x) = sqrt(log(x));
g(x) = sqrt(1-x);
h = compose(g,f,x)
%Calculus (Differentiation, Integration, Limits, Series, etc)
diff(sin(x))
%
diff(x^2+sin(2*x^4)+1,x)
%
int(exp(-x^2/2),x)
%
int(x*log(1+x),0,1)
%
syms x 
T = taylor(sin(x)/x)
subs(T,x,0)
% .
limit(tan(x),x,pi/2,'left')
limit(tan(x),x,pi/2,'right')
limit(tan(x),x,pi/2)
%Differential Equations.
syms a b y(x)
dsolve(diff(y) == -a*y)
%
dsolve(diff(y)== -a*y,y(0)==b)
%
syms x(t) y(t)
z = dsolve(diff(x) == y, diff(y) == -x);
disp([z.x;z.y])
%Linear Algebra
syms a b c d
%
syms x1 x2
x = [x1; x2];
A = [a b ; c d];
b = A*x
%
det(A)
%
lambda = eig(A)
%Graphics
fplot(tan(x))
%
syms t
x = t*sin(5*t); 
y = t*cos(5*t);
fplot(x, y)
grid on
%
syms t
xt = exp(abs(t)/10).*sin(5*abs(t));
yt = exp(abs(t)/10).*cos(5*abs(t));
zt = t;
h = fplot3(xt,yt,zt, [-10,10],'--r');
%
syms x y
fsurf(sin(x) + cos(y))
%
fcontour(sin(x) + cos(y))
