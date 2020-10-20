function Cells=RemoveBorder(Cells)
for i=1:size(Cells,1)
    for j=1:size(Cells,2)
        A=[Cells{i,j}];
        A(:,:,3)=0;
        B=Filter_Meddian(A,[7,7],3);
        T=mean(mean((B(:,:,1)+B(:,:,2))/2))/255;
        C=im2bw(B,T);
        Cells{i,j}=Crop(C,[Cells{i,j}]);
    end
end   
end