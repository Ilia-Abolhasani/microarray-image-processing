function [Out1,Out2]=GetElement(Cells)
Out1=cell(size(Cells));
Out2=cell(size(Cells));
[H,W]=size(Cells);
for h=1:H
    for w=1:W
        A=[Cells{h,w}];
        B=Filter_Max(A,4,1);
        C=B(:,:,1)+B(:,:,2)+B(:,:,3);
        clear Ce;
        Ce(:,:,1)=C;
        Ce(:,:,2)=C;
        Ce(:,:,3)=C;
        Margin=zeros(size(A,1),30,3);
        Margin(:,10:20,:)=255;
        Out1{h,w}=[A,Margin,B,Margin,Ce];                        
        T=mean(mean(C))/(255*10);
        D=edge(C,'Canny',T);
        stat=regionprops(D,'Area','Extent','PixelIdxList','Image');
        stat=stat([stat.Area]>(mean([stat.Area])));
        E=zeros(size(D));
        for i=1:length(stat)
            E(stat(i).PixelIdxList)=1;
        end
        Margin=zeros(size(D,1),30);
        Margin(:,10:20)=1;        
        Out2{h,w}=[D,Margin,D-E,Margin,E];
    end
end
end
