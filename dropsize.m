%loop para cada toma
d=dir('16.08. Toma 1'); 
for i=1:numel(60);
rgb=imread('aspersormanual_modospray_hor_TOMA1_-00',i,'.png'); %nombre de la serie
I = rgb2gray(rgb);
end
% Detect MSER regions.
[mserRegions, mserConnComp] = detectMSERFeatures(I, ... 
    'RegionAreaRange',[100 8000],'ThresholdDelta',1);

figure
imshow(I)
hold on
plot(mserRegions, 'showPixelList', true,'showEllipses',false)
title('MSER regions')
hold off
% 
% T=0.3; %Threshold para binarización
% total=(r+g+b)./3; %nivel de blanco
% bin=imbinarize(r,'adaptive','ForegroundPolarity','bright','Sensitivity',0.2);
% binarización relativa

% figure 2
% hold on
% l=0;
% imshow(bin);
% hold off
% 

B = regionprops(I); %datos de cada región de interés
dropcount(:,j) = lentgh(B);
figure(2)
histogram(heights,1000);
