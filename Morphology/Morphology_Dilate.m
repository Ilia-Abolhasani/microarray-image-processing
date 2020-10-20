function Out = Morphology_Dilate(BinaryImage, Size)
    hdilate = vision.MorphologicalDilate('Neighborhood', ones(Size,Size));
    Out = step(hdilate, BinaryImage);
end
