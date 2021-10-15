% Title        :Funcion minimo de cable usado
% Description  :Script para graficar el minimo de cable usado
% Author       :Bryan Alejandro Martinez López, Oscar Eduardo Mendoza Alcantara, Gabriel Hernandez Cuadra 
% Date         :20211014
% Version      :1
% Usage        :octave> /path/
%              :octave>>ScriptPostes
%              :Requiere aplicacion octave para usar su linea de comandos 

% limpiar variable 
 clear 

% Minimo de cable
% Rango de -20.. 20 en i=1
 h= -20:20;

% Valor de la funcion 
 Fh= @(h) sqrt(10^2 + h.^2) + sqrt(15^2 + (20 - h)^2);

% Funcion a plotear  
 y= sqrt(10^2 + h.^2) + sqrt(15^2 - 40*h + h.^2);

% Funcion para determinar valor minimo
 rest= fminbnd(Fh,-20,20);

% Dibujar h,y 
 plot (h,y);

% Titulo 
 title(['Minimo cable usado = ' num2str(rest)]);

% Etiqueta para x
 xlabel(['Min x= ' num2str(rest)]);

% Etiqueta para y 
 ylabel(['Min y= ' num2str( Fh(rest) )]); 

