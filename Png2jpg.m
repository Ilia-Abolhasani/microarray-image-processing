clc;
clear;
close all;
%%
Addres='.\Data_Liver\Yes\';
d=dir(fullfile(Addres,'*.png'));
for i=1:length(d)    
    [I,map]=imread([Addres,d(i).name]);
    d(i).name=strrep(d(i).name,'png','jpg');
    imwrite(I,map,[Addres,d(i).name],'jpg');
    i
end
