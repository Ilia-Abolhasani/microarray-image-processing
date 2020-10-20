function Out = Morphology_Open(BinaryImage, Size)
 hopening = vision.MorphologicalOpen;
 hopening.Neighborhood = strel('disk', Size);
 Out = step(hopening, BinaryImage);
end
