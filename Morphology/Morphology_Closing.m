function Out = Morphology_Closing(BinaryImage, Size)
 hclosing = vision.MorphologicalClose;
 hclosing.Neighborhood = strel('disk', Size);
 Out = step(hclosing, BinaryImage);
end
