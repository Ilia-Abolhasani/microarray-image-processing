function Input=GetMeanNegtboard(Input,Size)
Input=double(Input);
N=length(Input);
Size=floor(Size/2);
while(sum(Input>0.95)>0)
       [~,L]=max(Input);
        Index=max(1,L-Size):min(N,L+Size);        
        Index1=Index(Input(Index)==1);
        Input(Index)=0;
        Input(floor(mean(Index1)))=0.8;
end
Input(Input>0.5)=1;
end
