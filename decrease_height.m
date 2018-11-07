function [reducedColorImg,reducedEnergyImg] = decrease_height(img,energyimg)
height = size(img,1);
width = size(img,2);
color = size(img,3);


cumulativeMap = cumulative_energy_map(energyimg,"HORIZONTAL");
horizontalSeam = find_horizontal_Seam(cumulativeMap);
size(horizontalSeam);
%figure;
%imagesc(img);
%hold on;
%view_seam(img,horizontalSeam,"HORIZONTAL");
%hold on;
%pause(0.05);

newImage=permute(img,[2 1 3]);
diminishedImage = zeros(width,height-1,color,'uint8');
for i = 1:width

p = [newImage(i,1:horizontalSeam(i)-1,:),newImage(i,horizontalSeam(i)+1:height,:)];
%size(p)
diminishedImage(i,:,:)=p;
end
diminishImage=permute(diminishedImage,[2 1 3]);
%imagesc(diminishImage);
reducedColorImg = diminishImage;
reducedEnergyImg = energy_img(reducedColorImg);
end

