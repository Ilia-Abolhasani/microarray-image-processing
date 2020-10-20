function Input=Filter_Meddian(Input,Size,Iteration)
for i=1:Iteration
Input(:,:,1)=medfilt2(Input(:,:,1),Size);
Input(:,:,2)=medfilt2(Input(:,:,2),Size);
Input(:,:,3)=medfilt2(Input(:,:,3),Size);
end
end
