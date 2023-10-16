%FUNCION QUE RESUELVE EL SISTEMA
function dx=CFRO(t,x)

%PARAMETROS
R=2; %RESIS
Kt=0.01; %K TORQUE
b=0.0012; %AMORTIGUACION
Lu=0.023; %INDUCTOR
Ke=0.01; %K VOLTAJE
J=0.001; %INERCIA J
Vin=5; %VOLTAJE I

%MATRIZ VARIABLE DE ESTADO
dx=zeros(3,1);

%ESPACIO DE ESTADO
dx(1)=(1/Lu)*(-Ke*x(3)-R*x(1)+Vin);
dx(2)=x(3);
dx(3)=(1/J)*(Kt*x(1)-b*x(3));