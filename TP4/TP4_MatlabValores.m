% Declaração de variáveis
clear % limpa as variáveis da workspace
clc % Limpa o ecrã de comandos do Matlab


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mensagem inicial para a linha de comandos
disp(' '); disp(' ');
disp('ISEL / DEEEA - Controlo de Sistemas - Semestre Verão 2021/2022')
disp(' ');
disp('Nome do mfile: mf_dados_3Tanques')
disp(' ');
disp('Data última atualização (15-março-2022)')
disp(' ');
disp('Objetivo: Carregar as variáveis do trabalho nº 4 - Simulação de Sistemas (Controlo do Nível 3')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');


%Parâmetros do Tanque 1
R1=4; % Resistência Hidráulica do tanque 1 (s/m^2)
C1=3; % Capacitância hidráulica do tanque 1 ou area do tanque 1 (m^2)


%Parâmetros do Tanque 2
R2=2; % Resistência Hidráulica do tanque 2 (s/m^2)
C2=2; % Capacitância hidráulica do tanque 2 ou área do tanque 2 (m^2)


%Parâmetros do Tanque 3
R3=1; % Resistência Hidráulica do tanque 3 (s/m^2)
C3=1; % Capacitância hidráulica do tanque 3 ou área do tanque 3 (m^2)


% Potenciómetro de entrada
KP_in=2; % Ganho do potenciómetro de entrada (V/m)


% Sensor de Nível
KS=2; % Ganho do sensor de nível (V/m)


% Motor + Redutor + Válvula
KMRV=2; % Ganho do Motor + Redutor + Válvula (m^3/(s V))


% Parâmetros do controlador PID

% Calculo dos polos e de TC1 / TC2
A=R1*R2*R3*C1*C2*C3;
B=(R1*C1*R2*C2)+(R3*C3*R1*C1)+(R3*C2*R1*C1)+(R3*R2*C2*C3);
C=(R1*C1)+(R2*C2)+(R3*C3)+(R3*C2);
D=1;
FT=tf(R3,[A B C D]);
polos=eig(FT);
polos=sort(polos);
TC1=polos(3);
TC2=polos(2);

% Calculo de KC
Z=1;  % Amortecimento
KC=0.01;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fim da Mensagem inicial para a linha de comandos
disp('Variáveis do Trabalho 4 carregadas para a workspace:')
who
disp(' '); disp(' '); disp(' ');