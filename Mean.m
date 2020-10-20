function Input=Mean(Input)
while(length(size(Input))~=2 ||size(Input,1)~=1||size(Input,2)~=1)
    Input=mean(Input);
end
end
