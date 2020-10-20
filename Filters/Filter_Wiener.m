function Input=Filter_Wiener(Input,Iteration)
for i=1:Iteration
Input(:,:,1)=wiener2(Input(:,:,1));
Input(:,:,2)=wiener2(Input(:,:,2));
Input(:,:,3)=wiener2(Input(:,:,3));
end
end
