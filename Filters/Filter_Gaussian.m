function Input=Filter_Gaussian(Input,Iteration)
for i=1:Iteration
Input=imgaussfilt(Input);
end
end
