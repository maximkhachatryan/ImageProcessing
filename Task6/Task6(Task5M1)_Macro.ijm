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

saveAs("PNG", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task6/2 PreviousTasksOnLR/Task5_Results/Method1/Result(155-14).png");
close();
