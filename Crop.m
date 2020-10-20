function Out=Crop(Input,RealImage)
A=sum(Input,1);
B=sum(Input,2);
C=A(end:-1:1,end:-1:1);
D=B(end:-1:1,end:-1:1);
X1=find(A>0,1);
Y1=find(B>0,1);
X2=size(Input,1)-find(C>0,1);
Y2=size(Input,2)-find(D>0,1);
Out=RealImage(X1:X2,Y1:Y2,:);
end