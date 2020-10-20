function I4=Bw_Image(Input,Flag_Show,Address,Flag_Write)
I1=Filter_Average(Input,5);
I1=Filter_Max(I1,7,1);
T=Mean(I1(:,:,1:2))/255;
I1=im2bw(I1,T);
I2=Morphology_Closing(I1,6);
I3=Morphology_Dilate(I2,5);
I4=Morphology_Closing(I3,5);
Margin=zeros(size(I1,1),30);
Margin(:,10:20)=1;
if(Flag_Show)
    figure;
    imshow([I1,Margin,I2,Margin,I3,Margin,I4]);
end
if(Flag_Write)    
    imwrite([I1,Margin,I2,Margin,I3,Margin,I4],[Address,'Bineary process.jpg'],'jpg');
end
end
