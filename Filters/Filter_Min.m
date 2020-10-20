function Input=Filter_Min(Input,Size,Iteration)
for i=1:Iteration
Input(:,:,1)=ordfilt2(Input(:,:,1),1,ones(Size));
Input(:,:,2)=ordfilt2(Input(:,:,2),1,ones(Size));
Input(:,:,3)=ordfilt2(Input(:,:,3),1,ones(Size));
end
end
