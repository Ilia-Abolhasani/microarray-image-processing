function Output=Fixed_Angle(Input,Size)
Alpha=-2:0.5:2;
Bw=Bw_Image(Input,0,'',0);
[h,w]=size(Bw);
Min=min(h,w);
Resulation=400;
Bw=imresize(Bw,[floor(Resulation*(((h-Min)/Min)+1)), Resulation*(((w-Min)/Min)+1)]);
OrderList=zeros(1,length(Alpha));
for i=1:length(Alpha)     
     [Out1,Out2]=Line_Vertical(imrotate(Bw,Alpha(i)),Size,0,'',0);               
     OrderList(i)=sum(Out1(Out2>0))/(Size(1,2)+1);     
end
[~,Location]=max(OrderList);
Alpha=Alpha(Location);
Alpha=(Alpha-0.4):0.1:(Alpha+0.4);
OrderList=zeros(1,length(Alpha));
for i=1:length(Alpha)     
     [Out1,Out2]=Line_Vertical(imrotate(Bw,Alpha(i)),Size,0,'',0);               
     OrderList(i)=sum(Out1(Out2>0))/(Size(1,1)+1);     
end
[~,Location]=max(OrderList);
Output=imrotate(Input,Alpha(Location));
Alpha(Location)
end
