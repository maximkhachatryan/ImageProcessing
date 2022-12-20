run("Binary Layers");

selectWindow("layer_3_");
close();
selectWindow("layer_2_");
close();

selectWindow("layer_1_");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Dilate");

selectWindow("layer_0_");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Dilate");

imageCalculator("AND create", "layer_0_","layer_1_");
selectWindow("Result of layer_0_");
run("Invert LUT");

selectWindow("layer_0_");
close();
selectWindow("layer_1_");
close();

selectWindow("Result of layer_0_");
saveAs("PNG", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task6/2 PreviousTasksOnLR/Task5_Results/Method2/Result(151-01).png");
close();
