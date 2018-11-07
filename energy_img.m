%%Testing
%I = imread('inputSeamCarvingPrague.jpg');
%figure;

%I2=rgb2gray(I);
%imshow(I2);
%pause;
%figure;
%I1 = energy_img(I);
%imagesc(I1);
%pause;


%%
%Function writing

function energyImg = energy_img(im)
   im1 = rgb2gray(im);
   [Gx,Gy] = imgradientxy(im1);
   energyImg = sqrt(Gx .^ 2 + Gy .^ 2); 
end
