run("Binary Layers");

selectWindow("layer_3_");
close();
selectWindow("layer_2_");
close();
selectWindow("layer_1_");
close();
selectWindow("layer_0_");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Erode");
run("Skeletonize");
run("Invert LUT");

saveAs("PNG", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task5/2 Method1/Task5M1_155-14.png");
close();
