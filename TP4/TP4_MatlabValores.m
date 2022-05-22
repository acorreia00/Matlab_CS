% Declaração de variáveis
clear % limpa as variáveis da workspace
clc % Limpa o ecrã de comandos do Matlab


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mensagem inicial para a linha de comandos
disp(' '); disp(' ');
disp('ISEL / DEEEA - Controlo de Sistemas - Semestre Verão 2021/2022')
disp(' ');
disp('Nome do mfile: TP4_MatlabValores')
disp(' ');
disp('Data última atualização (18-maio-2022)')
disp(' ');
disp('Objetivo: Carregar as variáveis do trabalho nº 4 - Simulação de Sistemas (Controlo do Nível 3')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');


%Parâmetros do Tanque 1
R1 = 2; % Resistência Hidráulica do tanque 1 (s/m^2)
C1 = 5; % Capacitância hidráulica do tanque 1 ou area do tanque 1 (m^2)


%Parâmetros do Tanque 2
R2 = 3; % Resistência Hidráulica do tanque 2 (s/m^2)
C2 = 3; % Capacitância hidráulica do tanque 2 ou área do tanque 2 (m^2)


%Parâmetros do Tanque 3
R3 = 5; % Resistência Hidráulica do tanque 3 (s/m^2)
C3 = 2; % Capacitância hidráulica do tanque 3 ou área do tanque 3 (m^2)


% Potenciómetro de entrada
KP_in = 3; % Ganho do potenciómetro de entrada (V/m)


% Sensor de Nível
KS = 3; % Ganho do sensor de nível (V/m)


% Motor + Redutor + Válvula
KMRV = 5; % Ganho do Motor + Redutor + Válvula (m^3/(s V))


% Parâmetros do controlador PID

% Calculo dos polos e de TC2 / TC3
A = KMRV*R3;
B = R1*R2*C2*R2*C3*R3;
C = (R1*R2*C3*R3)+(R1*R2*C2*R2)+(C2*R2*C3*R3);
D = (R1*R2)+(C3*R3)+(C2*R2);
E = 1;
FT = tf(A,[B C D E]);
polos = eig(FT);
polos = sort(polos);
TC3 = polos(1);
TC2 = polos(2);
TC1 = polos(3);

% Calculo de KC
Z = 1;  % Amortecimento
W0 = (2*Z)/(TC3);
KC = ((W0^2)*TC3)/(A*KS);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fim da Mensagem inicial para a linha de comandos
disp('Variáveis do Trabalho 4 carregadas para a workspace:')
who
disp(' '); disp(' '); disp(' ');