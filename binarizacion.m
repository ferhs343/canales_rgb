clc
clear all
close all

img = imread('imagen_1.jpg');

%% binarizacion
img_gris = rgb2gray(img); %% conversion a gris

valor_pixel = 127; %% entre 0 y 255
umbral = valor_pixel/255; %% valor entre 0 y 1
img_bn = im2bw(img_gris, umbral); %%convsersion a blanco y negro

figure(1)
imshow(img_gris);
figure(2)
imshow(img_bn);

%% operacion NOT

img_bn_not = not(img_bn); 
figure(3)
imshow(img_bn_not)