run("Binary Layers");

selectWindow("layer_0_");
close();

setOption("BlackBackground", true);

selectWindow("layer_1_");
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Erode");
run("Analyze Particles...", "  show=Ellipses clear");
selectWindow("layer_1_");
close();
selectWindow("Drawing of layer_1_");
run("Convert to Mask");
run("Invert LUT");

selectWindow("layer_2_");
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Erode");
run("Analyze Particles...", "  show=Ellipses clear");
selectWindow("layer_2_");
close();
selectWindow("Drawing of layer_2_");
run("Convert to Mask");
run("Invert LUT");

selectWindow("layer_3_");
run("Convert to Mask");
run("Dilate");
run("Dilate");
run("Dilate");
run("Erode");
run("Erode");
run("Erode");
run("Analyze Particles...", "  show=Ellipses clear");
selectWindow("layer_3_");
close();
selectWindow("Drawing of layer_3_");
run("Convert to Mask");
run("Invert LUT");


imageCalculator("OR create", "Drawing of layer_1_","Drawing of layer_2_");
imageCalculator("OR create", "Result of Drawing of layer_1_","Drawing of layer_3_");
selectWindow("Result of Drawing of layer_1_");
close();

selectWindow("Drawing of layer_1_");
close();
selectWindow("Drawing of layer_2_");
close();
selectWindow("Drawing of layer_3_");
close();


saveAs("PNG", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task4/2 Task4_results/Task4_155-10.png");
close();
