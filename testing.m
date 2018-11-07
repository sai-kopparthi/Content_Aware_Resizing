close all;
I = imread('inputSeamCarvingPrague.jpg');
energyMap = energy_img(I);  
figure;
imagesc(energyMap);
title('EnergyMap');
pause;
saveas(1, 'EnergyMapPrague','png');
CumulativeMap = cumulative_energy_map(energyMap,"HORIZONTAL");
CumulativeMap2 = cumulative_energy_map(energyMap,"VERTICAL");
figure;
imagesc(CumulativeMap);
title('Horizontal Cumulative Energy Map');
pause;
saveas(2, 'CumulativeEnergyHorizontalPrague','png');
figure;
imagesc(CumulativeMap2);
title('Vertical Cumulative Energy Map');
pause;
saveas(3, 'CumulativeEnergyVerticalPrague','png');
p = find_Vertical_Seam(CumulativeMap2);
q = find_horizontal_Seam(CumulativeMap);
figure;
imshow(I);
hold on;
view_seam(I,p,"VERTICAL");
hold on;
view_seam(I,q,"HORIZONTAL");
pause;
saveas(4,'VerticalAndHorizontalSeam','png');




[a,b]=decrease_width(I,energyMap);
%figure;
%imagesc(b);
%pause;
[a,b]=decrease_height(I,energyMap);






















close all;