function [] =ShowBlock(Cells,Mood)
if(Mood==1)
       figure;            
end
[h,w]=size(Cells);
for i=1:h
    for j=1:w
        if(Mood==1)
            subplot(h,w,((i-1)*w)+j);            
        else
            figure;            
        end 
        imshow([Cells{i,j}]);               
    end
end
end
