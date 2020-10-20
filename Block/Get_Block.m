function Output=Get_Block(Image,Size,Address, Flag_Show)
Output=cell(Size);
Bw=Bw_Image(Image,Flag_Show,Address,1);
%%
[~,Vertical_Image]=Line_Vertical(Bw,Size,Flag_Show,Address,1);
[~,Horizontal_Image]=Line_Horizontal(Bw,Size,Flag_Show,Address,1);
%% Splite
W=1:length(Vertical_Image);
W=W(Vertical_Image==1);
H=1:length(Horizontal_Image);
H=H(Horizontal_Image==1);
for i=1:Size(1,1)
    for j=1:Size(1,2)        
        Output{i,j}=Image(H(i):H(i+1),W(j):W(j+1),:);
    end
end
end
