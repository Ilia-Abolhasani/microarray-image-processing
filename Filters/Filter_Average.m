function Input=Filter_Average(Input,Iteration)
    for i=1:Iteration
    Input=imfilter(Input,fspecial('average'));
    end
end
