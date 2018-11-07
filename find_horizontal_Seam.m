%load('Q_var.mat');
%a=find_horizontal_Seam(Q);
%b=find_optimal_horizontal_seam(Q);
%save horizontalSeam_A.mat
function horizontalSeam = find_optimal_horizontal_Seam(cumulativeEnergyMap)
height = size(cumulativeEnergyMap,1);
width = size(cumulativeEnergyMap,2);

%%Make the vector of verticalSeam
Seam = zeros(width,1);

%Write the algorithm to find Vertical Seams
[Value,Seam(width)] = min(cumulativeEnergyMap(:,width));
%find the first minimum Seam
for i=width-1:-1:1
          if(Seam(i+1)-1 < 1)
              p=1;
          else
              p=Seam(i+1)-1;
          end
          if(Seam(i+1) +1 > height)
              q=height;
          else
              q=Seam(i+1)+1;
          end   
          [req,indexvector]= min(cumulativeEnergyMap(p:q,i));
          %indexvector
          Seam(i)=indexvector + p -1;
end
horizontalSeam = Seam;
end