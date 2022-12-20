

run("Binary Layers");
selectWindow("layer_0_");
close();


selectWindow("layer_1_");
run("Invert LUT");
selectWindow("layer_2_");
run("Invert LUT");
selectWindow("layer_3_");
run("Invert LUT");


selectWindow("layer_1_");
run("Convert to Mask");
run("Fill Holes");
run("Invert LUT");

selectWindow("layer_2_");
run("Convert to Mask");
run("Fill Holes");
run("Invert LUT");

selectWindow("layer_3_");
run("Convert to Mask");
run("Fill Holes");
run("Invert LUT");


imageCalculator("AND create", "layer_1_","layer_2_");
selectWindow("Result of layer_1_");
imageCalculator("AND create", "Result of layer_1_","layer_3_");
selectWindow("Result of Result of layer_1_");
selectWindow("Result of layer_1_");
close();

selectWindow("layer_1_");
close();
selectWindow("layer_2_");
close();
selectWindow("layer_3_");
close();


selectWindow("Result of Result of layer_1_");
run("Set Measurements...", "centroid redirect=None decimal=3");
run("Analyze Particles...", "display clear");

saveAs("PNG", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task6/2 PreviousTasksOnLR/Task2_results/Result(155-14).png");
saveAs("Results", "C:/Users/maxim/OneDrive/Desktop/FinalProj/Task6/2 PreviousTasksOnLR/Task2_results/Centroid(155-14).csv");
close();
close("Results");
