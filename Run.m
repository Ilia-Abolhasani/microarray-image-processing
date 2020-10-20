clc;
clear;
close all;
tic
%%
AddPath();
Address='./Result/';
mkdir(Address);
%%
I0=imread('.\Data_Liver\No\5157.jpg');
imwrite(I0,[Address,'OrjinalImage.jpg'],'jpg');                
SizeBlock=[8,4];
SizeGrade=[27,28];
%% Fix angle
I1=Fixed_Angle(I0,SizeBlock);
imwrite(I1,[Address,'Angle Fixed.jpg'],'jpg');
Cells=Get_Block(I1,SizeBlock,Address,1);
%% Show cells
WirteImages(Cells,Address,'Main.jpg');
Cells=RemoveBorder(Cells);
WirteImages(Cells,Address,'Removed Borders.jpg');
load('Status.mat')
[Temp1,Temp2]=GetElement(Cells);
WirteImages(Temp1,Address,'Preprocess for select element.jpg');
WirteImages(Temp2,Address,'Selected Element.jpg');
Temp3=Convert2Matrix(Cells,SizeGrade,Address);
Temp4=Temp3(:,:,1);
WirteImages(Temp4,Address,'Graid.jpg');
% ShowBlock(Cells,1);
toc
