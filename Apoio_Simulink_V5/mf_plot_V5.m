% (ADEEEA-ISEL) - Secção de Automação e Electrónica            outubro 2015
% Grupo Diciplinar Controlo                   Nome do ficheiro: mf_plot_V5
% Atualizado em 10 de outubro de 2015 por Luis Rocha

% O objetivo deste ficheiro é tratar os dados de simulação para gerar as curvas 
% de simulação, para que possam ser copiadas para um programa como o word ou powerpoint

disp(' '); disp(' ');
disp('ISEL / ADEEEA - Controlo de Sistemas - Semestre Inverno 2015/2016')
disp(' '); 
disp('Nome do mfile: mf_plot_V5 ')
disp(' '); 
disp('Data ultima actualização (10-outubro-2015)')
disp(' '); 
disp('Exemplo de ficheiro para imprimir graficos a partir do simulink')
disp(' '); disp(' '); disp(' '); disp(' '); disp(' '); disp(' ');


%%%%%%%%%%%%%%%%%% Figuras relativas ao exemplo 1 e 2 %%%%%%%%%%%%%%%%%%

% Exemplo para colocar 2 com o aspecto matriz (2x1)
figure(1)
subplot(2,1,1) %matriz da figura 1 (2 linhas e uma coluna, figura 1/2)
plot(t,y1','k-',t,sp1,'b-')
title('Sistema de 2ª ordem, FT1, sem controlador')
xlabel('tempo(s)')
ylabel('Amplitude (V)')
%grid;
v1=[0 30 0 5]; axis(v1) %define os limites dos eixos [xmin xmax ymin ymax]

subplot(2,1,2)     %matriz da figura 1 (2 linhas e uma coluna, figura 2/2)
plot(t,y2,'k-',t,sp2,'r-')
title('Sistema de 2ª ordem, FT1,  com controlador PI')
xlabel('tempo(s)')
ylabel('Amplitude (V)')
v2=[0 30 0 5]; axis(v2)

% As 2 respostas y1(t) e y2(t) no mesmo grafico,+ o set-point (3 curvas no total)
figure(2)
plot(t,y1,'k-',t,y2,'b-',t,sp1,'r-')
title('Resposta temporal y1(t) y2(t)'); xlabel('tempo(s)');
ylabel('Amplitude (V)')
%grid;
v3=[0 30 0 5]; axis(v3);  
legend('y1(t)','y2(t)','Set-Point',4); legend('boxoff')

%pause;     % executa uma pausa no programa

%%%%%%%%%%%%%%%%%% Figuras relativas ao exemplo 3 %%%%%%%%%%%%%%%%%%

% Exemplo para colocar 2 com o aspecto matriz (1x2)
figure(3)
subplot(1,2,1)    %matriz da figura 2 (1 linhas e duas colunas, figura 1/2)
plot(t,Q,'k-')
title('Controlo de caudal Q1')
xlabel('tempo(s)')
ylabel('Caudal (m^3/s)')
v3=[0 50 0 25]; axis(v3) %define os limites dos eixos [xmin xmax ymin ymax]
grid;

subplot(1,2,2)    %matriz da figura 2 (1 linhas e duas colunas, figura 2/2)
plot(t,H,'b-')
title('Nivel do tanque 1')
xlabel('tempo(s)')
ylabel('Nivel (m)')
v4=[0 50 0 45]; axis(v4)