% Declara��o de vari�veis
clear % limpa as vari�veis da workspace
clc % Limpa o ecr� de comandos do Matlab


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mensagem inicial para a linha de comandos
disp(' '); disp(' ');
disp('ISEL / DEEEA - Controlo de Sistemas - Semestre Ver�o 2021/2022')
disp(' ');
disp('Nome do mfile: TP4_MatlabValores')
disp(' ');
disp('Data �ltima atualiza��o (18-maio-2022)')
disp(' ');
disp('Objetivo: Carregar as vari�veis do trabalho n� 4 - Simula��o de Sistemas (Controlo do N�vel 3')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');


%Par�metros do Tanque 1
R1 = 2; % Resist�ncia Hidr�ulica do tanque 1 (s/m^2)
C1 = 5; % Capacit�ncia hidr�ulica do tanque 1 ou area do tanque 1 (m^2)


%Par�metros do Tanque 2
R2 = 3; % Resist�ncia Hidr�ulica do tanque 2 (s/m^2)
C2 = 3; % Capacit�ncia hidr�ulica do tanque 2 ou �rea do tanque 2 (m^2)


%Par�metros do Tanque 3
R3 = 5; % Resist�ncia Hidr�ulica do tanque 3 (s/m^2)
C3 = 2; % Capacit�ncia hidr�ulica do tanque 3 ou �rea do tanque 3 (m^2)


% Potenci�metro de entrada
KP_in = 3; % Ganho do potenci�metro de entrada (V/m)


% Sensor de N�vel
KS = 3; % Ganho do sensor de n�vel (V/m)


% Motor + Redutor + V�lvula
KMRV = 5; % Ganho do Motor + Redutor + V�lvula (m^3/(s V))


% Par�metros do controlador PID

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
disp('Vari�veis do Trabalho 4 carregadas para a workspace:')
who
disp(' '); disp(' '); disp(' ');