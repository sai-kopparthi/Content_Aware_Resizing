

%%
function verticalSeam = find_Vertical_Seam(cumulativeEnergyMap)
height = size(cumulativeEnergyMap,1);
width = size(cumulativeEnergyMap,2);

%%Make the vector of verticalSeam
Seam = zeros(height,1);

%Write the algorithm to find Vertical Seams
[Value,Seam(height)] = min(cumulativeEnergyMap(height,:));
%find the first minimum Seam
for i=height-1:-1:1
          if(Seam(i+1)-1 > 1)
              p=Seam(i+1)-1;
          else
              p=1;
          end
          if(Seam(i+1) +1 > width)
              q=width;
          else
              q=Seam(i+1)+1;
          end   
          col = p:q;
          [req,indexvector]= min(cumulativeEnergyMap(i,col));
          Seam(i)=indexvector + p - 1;
end
verticalSeam = Seam;
end
%%