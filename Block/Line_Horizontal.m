function [I3,I6]=Line_Horizontal(Input,Size,Flag_Show,Address,Flag_Write)
I1=sum(Input,2);
I2=I1;
I2(I2>mean(I2))=mean(I2);
I3=abs(I2-max(I2));
I4=Normalize(I3);
I5=GetMaxNegtboard(I4,floor(length(I1)/((Size(1,2)/1)+1)));
I6=I5>(mean(I5));
I6=GetMeanNegtboard(I6,floor(length(I1)/Size(1,1)));
%% Show
if(Flag_Show)
figure;
subplot(3,2,1);plot(I1);
subplot(3,2,2);plot(I2);
subplot(3,2,3);plot(I3);
subplot(3,2,4);plot(I4);
subplot(3,2,5);plot(I5);
subplot(3,2,6);plot(I6);
end
if(Flag_Write)
    fig = gcf;
    print(fig,[Address,'Horizontal Plot'],'-djpeg');
end
end
