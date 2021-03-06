%% Exemplo com a func�o interpola��o
close all; clear all; clc;

%%%
%  x_in =
%  
%  -2.0000   -1.0000         0    0.5000    1.0000    2.0000    5.0000
%  y_in =
%  
%  -2.0000   -1.0000         0    0.5000    0.6200    0.6700    0.7200


x_in = [-2 -1 0 .5 1 2 5];               % vetor x de entrada
y_in = [-2 -1 0 0.5 0.62 0.67 0.72];    % vetor y de entrada
n_points = 50;                          % numero de pontos

method = 'spline';
% 'linear' | 'nearest' | 'spline' | 'pchip' | 'cubic'

[ x_out y_out ] = interpolation_by_me( x_in, y_in, n_points, method );

% gera�ao da imagem
figure
plot(x_in,y_in,'r*',x_out,y_out,'ko')
legend('ptos originais','pontos interpolados','Location','Best')
ylabel('eixo y')
xlabel('eixo x')


