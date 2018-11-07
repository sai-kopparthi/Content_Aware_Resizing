%I = imread('inputSeamCarvingPrague.jpg');
%load('horizontalSeam_A.mat');
%load('Q_var.mat');
%view_seam(I,a,"HORIZONTAL");
%view_seam(I,Q,"VERTICAL");
%load('verticalSeam_A.mat');
%view_seam(I,c,"VERTICAL");
function ViewSeam = view_seam(im,seam,seamDirection)

if seamDirection == "HORIZONTAL"
   plot(1:size(im,2),seam,'r');
end
if seamDirection == "VERTICAL"
   plot(seam,1:size(im,1),'r');
end
end
