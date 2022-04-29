% Declara��o de vari�veis
clear % limpa as vari�veis da workspace
clc % Limpa o ecr� de comandos do Matlab


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mensagem inicial para a linha de comandos
disp(' '); disp(' ');
disp('ISEL / DEEEA - Controlo de Sistemas - Semestre Ver�o 2021/2022')
disp(' ');
disp('Nome do mfile: mf_dados_3Tanques')
disp(' ');
disp('Data �ltima atualiza��o (15-mar�o-2022)')
disp(' ');
disp('Objetivo: Carregar as vari�veis do trabalho n� 4 - Simula��o de Sistemas (Controlo do N�vel 3')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');


%Par�metros do Tanque 1
R1=4; % Resist�ncia Hidr�ulica do tanque 1 (s/m^2)
C1=3; % Capacit�ncia hidr�ulica do tanque 1 ou area do tanque 1 (m^2)


%Par�metros do Tanque 2
R2=2; % Resist�ncia Hidr�ulica do tanque 2 (s/m^2)
C2=2; % Capacit�ncia hidr�ulica do tanque 2 ou �rea do tanque 2 (m^2)


%Par�metros do Tanque 3
R3=1; % Resist�ncia Hidr�ulica do tanque 3 (s/m^2)
C3=1; % Capacit�ncia hidr�ulica do tanque 3 ou �rea do tanque 3 (m^2)


% Potenci�metro de entrada
KP_in=2; % Ganho do potenci�metro de entrada (V/m)


% Sensor de N�vel
KS=2; % Ganho do sensor de n�vel (V/m)


% Motor + Redutor + V�lvula
KMRV=2; % Ganho do Motor + Redutor + V�lvula (m^3/(s V))


% Par�metros do controlador PID

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
disp('Vari�veis do Trabalho 4 carregadas para a workspace:')
who
disp(' '); disp(' '); disp(' ');