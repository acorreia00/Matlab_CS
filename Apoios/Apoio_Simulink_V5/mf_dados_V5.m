% (ADEEEA-ISEL) - Secção de Automação e Electrónica            outubro 2015
% Grupo Diciplinar Controlo                   Nome do ficheiro: mf_dados_V5
% Atualizado em 10 de outubro de 2015 por Luis Rocha

% O objetivo deste ficheiro é calcular e colocar na workspace as variáveis 
% usadas no ficheiro de simulação (de extensão mdl). Este ficheiro deverá ser carregado
% antes de correr o ficheiro do Simulink => Demo_Simulink_V5.mdl (5 exemplos)

clear   % limpa as variaveis da workspace
clc     % Limpa o ecran de comandos do Matlab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Mensagem inicial para a linha de comandos
disp(' '); disp(' ');
disp('ISEL / ADEEEA - Controlo de Sistemas - Semestre Inverno 2015/2016')
disp(' '); 
disp('Nome do mfile: mf_dados_V5 ')
disp(' '); 
disp('Data ultima actualização (10-outubro-2015)')
disp(' '); 
disp('Objectivo: Calcular e colocar na workspace as variáveis e modelo de estado')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');



%%Definição do Set_point nos exemplos 1 e 2(pode ser aqui ou no bloco 'Constant value')
% SP=4; % valor da amplitude do Set-Point

%Exemplo 2 (Diagrama de blocos com controlador PI)
Kp=4;    % Ganho Proporcional do controlador PI
Ki=2;    % Ganho Integral do Controlador PI


%Exemplo 3  (Estudo 1 tanque)
R=2;    % Resistencia Hidraulica do tanque 1 (s/m^2)
C=3;    % Capacitancia hidraulica do tanque 1 ou area do tanque 1 (m^2)

%Exemplo 4 (Sistema multivariavel com 2 tanques e com 3 entradas
R1=1;    % Resistencia Hidraulica do tanque 1 (s/m^2)
C1=3;    % Capacitancia hidraulica do tanque 1 ou area do tanque 1 (m^2)

R2=2;    % Resistencia Hidraulica do tanque 2 (s/m^2)
C2=1;    % Capacitancia hidraulica do tanque 2 (m^2)

% Matrizes introduzidas no bloco modelo de estado do simulink 

%Nota: e aconselhavel ler a teoria sobre Variaveis de Estado 
%      para entender as dimensoes das varias matrizes

MA=[-1/(R1*C1) 0;1/(R1*C2) -1/(R2*C2)];   %(2x2)
MB=[1/C1 1/C1 0;0 0 1/C2];          %(2x2)         
MC=[0 1/R2;0 1];                    %(2x2)         
MD=[0 0 0;0 0 0];                   %(2x3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fim da Mensagem inicial para a linha de comandos
disp('Variáveis carregadas para a workspace:')
who
disp(' '); disp(' '); disp(' '); 
