clc
clear
close all

Ra = 2;
Kt = 0.01;
b = 0.0012;
La = 0.023;
Ke = 0.01;
J = 0.001;
Va = 1;

ia0 = 0;
w0 = 0;

x_inicial = [ia0; w0];

t_inicio = 0;
t_final = 10;
tspan = [t_inicio, t_final];

[t, x] = ode45(@(t, x) p7_(Ra, Kt, b, La, Ke, J, Va, x), tspan, x_inicial);

plot(t,x(:,2));

function dxdt = p7_(Ra, Kt, b, La, Ke, J, Va, x)

dxdt = zeros(2,1);

dxdt(1) = (-Ra*x(1) - Ke*x(2) + Va)/La;
dxdt(2) = (Kt*x(1) - b*x(2))/J;

end
