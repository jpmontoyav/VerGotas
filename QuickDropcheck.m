image=imread(uigetfile()); %imagen con fondo previamente restado en imageJ
imageflip=flipud(image);%reversar blanco y negro!
p=FastPeakFind(imageflip);%Código de Natan (2020). "Fast 2D peak finder" (MATLAB central)
imagesc(image); 
hold on
plot(p(1:2:end),p(2:2:end),'r+')