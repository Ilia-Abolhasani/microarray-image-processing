function Out = Morphology_Erode(BinaryImage, Size)
    herode = vision.MorphologicalErode('Neighborhood', ones(Size ,Size));
    Out = step(herode, BinaryImage);
end
