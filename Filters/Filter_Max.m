function Input=Filter_Max(Input,Size,Iteration)
for i=1:Iteration
Input(:,:,1)=ordfilt2(Input(:,:,1),Size*Size,ones(Size));
Input(:,:,2)=ordfilt2(Input(:,:,2),Size*Size,ones(Size));
Input(:,:,3)=ordfilt2(Input(:,:,3),Size*Size,ones(Size));
end
end
