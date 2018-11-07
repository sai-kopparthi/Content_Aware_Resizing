function [reducedColorImg,reducedEnergyImg] = decrease_width(img,energyimg)
height = size(img,1);
width = size(img,2);
color = size(img,3);

% Find the Vertical Seam which has to be removed.
cumulativeMap = cumulative_energy_map(energyimg,"VERTICAL");
verticalSeam = find_Vertical_Seam(cumulativeMap);
size(verticalSeam);
%imagesc(img);
%hold on;
%view_seam(img,verticalSeam,"VERTICAL");
%hold on;
%pause(0.05);
diminishedImage = zeros(height,width-1,color,'uint8');
for i = 1:height
 %change color
diminishedImage(i,:,:) = [img(i,1:verticalSeam(i)-1,:),img(i,verticalSeam(i)+1:width,:)];
end
%imagesc(diminishedImage);
%hold on;
reducedColorImg = diminishedImage;
reducedEnergyImg = energy_img(reducedColorImg);
end