%FUNCION ODE45
[t,x]=ode45(@CFRO, [0 10], [0 0 0])

%GRAFICA
%FIGURA 1
figure(1)
plot(t,x(:,3), 'RED'); %
grid on
title("Velocidad Angular del motor");
xlabel("Tiempo");
ylabel("Radianes");