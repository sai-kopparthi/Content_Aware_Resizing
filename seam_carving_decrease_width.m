I = imread('inputSeamCarvingPrague.jpg');
energyMap = energy_img(I);
for i=1:100
    i
    [a,b] = decrease_width(I,energyMap);
    I=a;
    energyMap=b;
end
imshow(I);
saveas(1, 'outputReduceWidthPrague','png');

