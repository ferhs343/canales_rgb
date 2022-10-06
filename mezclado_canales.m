clc
clear all
close all

img = imread("imagen_1.jpg");

%% lectura de canales
img_R = img; %% canal rojo
img_R(:,:,2) = 0;  %% cancelar canal 2
img_R(:,:,3) = 0;  %% cancelar canal 3

img_G = img; %% canal verde
img_G(:,:,1) = 0;  %% cancelar canal 2
img_G(:,:,3) = 0;  %% cancelar canal 3

img_B = img; %% canal azul
img_B(:,:,1) = 0;  %% cancelar canal 2
img_B(:,:,2) = 0;  %% cancelar canal 3

figure(1)
imshow([img_R, img_G, img_B]);

%% combinacion de canales
img_1 = img_R + img_G;
img_2 = img_R + img_B;
img_3 = img_G + img_B;

figure(2)
imshow([img_1, img_2, img_3]);