close all, clear all, clc
M = imread('imagenes2/imagen4.bmp');

MEG = rgb2gray(M);
[f c k] = size(MEG);

figure
imshow(MEG);


numPixeles = f*c;

%% Histogramas

HM = zeros(1,255);  %Histograma
HMA = zeros(1,255); %Histograma acumulado

for i=1:f
    for j=1:c
        pos = MEG(i,j);
        HM(pos+1)= HM(pos+1)+1;
    end
end

acum=0;
for i=1:255
   acum = acum+HM(i);
   HMA(i)=acum;
end

HM = HM/numPixeles;
HMA = HMA/numPixeles;

figure
plot(HM);
figure
plot(HMA);


%% Ecualizacion













