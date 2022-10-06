clc
clear all
close all

img_a = imread("imagen_1.jpg");
img_b = imread("lobo.jpg");

%% cambiar tamaños --> operacion geometrica
[renglones, columnas, canales] = size(img_a);  %% --> leer tamaño de la imagen, filas = 3600 columnas = 2400 canales = 3

img_b = imresize(img_b, [renglones, columnas]); %% --> asignar nuevo tamaño a la imagen b

%% mezclado alfa
alfa = 0.3;
img_c = alfa.*img_a + (1-alfa).* img_b;
figure(1)
imshow([img_a, img_b, img_c]);