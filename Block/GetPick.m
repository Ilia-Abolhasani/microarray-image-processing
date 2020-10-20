function Out=GetPick(Input)
Out=Input;
for i=2:length(Input)-1    
    if((Input(i)<Input(i-1))||Input(i)<Input(i+1))
        Out(i)=0;
    end
end
end
