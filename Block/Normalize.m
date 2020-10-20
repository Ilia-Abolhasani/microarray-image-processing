function I=Normalize(I)
Max=max(I);
I1=I./Max;
I=I.*I1;
end
