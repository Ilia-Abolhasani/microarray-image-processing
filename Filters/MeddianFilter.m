function I=MeddianFilter(I,Number)
while(Number>1)
    I=medfilt1(I,Number);
    Number=Number-5;    
end
end
