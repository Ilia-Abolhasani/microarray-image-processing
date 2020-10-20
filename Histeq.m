function Output=Histeq(Input)
%%
Layer_Red=Input(:,:,1);
Layer_Green=Input(:,:,2);
Layer_Blue=Input(:,:,3);
%%
Layer_Red  =histeq(Layer_Red  );
Layer_Green=histeq(Layer_Green);
% Layer_Blue =histeq(Layer_Blue );
%%
Output(:,:,1)=Layer_Red;
Output(:,:,2)=Layer_Green;
Output(:,:,3)=Layer_Blue;
end
