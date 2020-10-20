function Out=GetMaxNegtboard(Input,Size)
Out=Input;
Size=floor(Size/2);
for i=1:length(Input) 
    M=max(Input(max(1,i-Size):min(end,i+Size)));
    if(Input(i)~= M)
        Out(i)=0;
    end   
end
end
