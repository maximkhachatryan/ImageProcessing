import ij.plugin.filter.PlugInFilter;
import ij.ImagePlus;
import ij.process.ImageProcessor;
import ij.process.ColorProcessor;
import ij.IJ;

//import java.awt.Color;



public class LR_Image implements PlugInFilter {

	String title;
	
	public int setup(String args, ImagePlus im) {
		title = im.getShortTitle();
		return DOES_RGB;
	}
	
	public void run(ImageProcessor inputIP) {
		int height = inputIP.getHeight()/5;
		int width = inputIP.getWidth()/5;
		int col, row;

		ImageProcessor outputIP = new ColorProcessor(width, height);
				
		for (col = 0; col < width; col++)
		{
			for (row = 0; row < height; row++)
			{
				int pixel = (inputIP.getPixel(col*5, row*5));
				outputIP.putPixel(col, row, pixel);		
			}
		}
		
		(new ImagePlus(title + "_LR", outputIP)).show();
	}
}