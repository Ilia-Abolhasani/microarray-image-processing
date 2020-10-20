function Out=Convert2Matrix(Cells,Size,Address)
Out=cell([size(Cells),2]);
[H,W]=size(Cells);
for h=1:H
    for w=1:W
        A=[Cells{h,w}];
        C=A;                
        Temp=zeros(Size);
        StempX=size(A,1)/Size(1);
        StempY=size(A,2)/Size(2);
        X=round(1:StempX:size(A,1));
        Y=round(1:StempY:size(A,2));
        A(X,:,:)=255;
        A(:,Y,:)=255;        
        for u=1:Size(1)
            for k=1:Size(2)
                IndexX1=round(max([((u-1)*StempX),1]));
                IndexX2=round(min([((u)*StempX),size(A,1)]));
                IndexY1=round(max([((k-1)*StempY),1]));
                IndexY2=round(min([((k)*StempY),size(A,2)]));
                B=A(IndexX1:IndexX2,IndexY1:IndexY2,:);
                Temp(u,k)=mean(mean((B(:,:,1)+B(:,:,2))/2));
            end
        end        
        Out{h,w,1}=[C,A];
        Out{h,w,2}=Temp;        
    end
end
end