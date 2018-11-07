%%
function cumulativeEnergyMap = cumulative_energy_map(energyImg,SeamDirection)
 [rows,columns] = size(energyImg);
 M = zeros(rows,columns);
 if SeamDirection == "HORIZONTAL"
       for j = 2:columns
        for i = 1:rows
          if(i-1 < 1)
              p=1;
          else
              p=i-1;
          end
          if(i+1 > rows)
              q=rows;
          else
              q=i+1;
          end
         M(i,j) = energyImg(i,j) + min(M(p:q,j-1)); 
        end
       end
 elseif SeamDirection == "VERTICAL"
      for i = 2:rows
        for j = 1:columns
          if(j-1 < 1)
              p=1;
          else
              p=j-1;
          end
          if(j+1 > columns)
              q=columns;
          else
              q=j+1;
          end
          M(i,j) = energyImg(i,j) + min(M(i-1, p:q)); 
        end
      end
 end
 Q = M;
 save Q_var.mat;
 cumulativeEnergyMap = Q;
end
%%





%%Testing
%I = imread('inputSeamCarvingPrague.jpg');
%figure;
%I2=rgb2gray(I);
%imagesc(I2);
%pause;
%figure;
%load('energyimg.m');

%I1 = energy_img(I);
%I3 = cumulative_min_energymap(I1,"VERTICAL");

%imagesc(I3);
%pause;
