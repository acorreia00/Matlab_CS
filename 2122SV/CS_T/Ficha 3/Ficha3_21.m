clear;
clc;
A=[0 1 0;0 0 1;0 0 5];
B=[0;0;1];
C=[-4 2 0];
D=0;
[b,a]=ss2tf(A,B,C,D);
FT=tf(b,a);