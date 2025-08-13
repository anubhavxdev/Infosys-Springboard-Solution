# Infosys-Springboard-Solution

## segmentImage.m

This project contains a MATLAB script for segmenting an image based on color using the HSV (Hue, Saturation, Value) color space.

### Overview
The script `segmentImage.m` demonstrates how to segment an RGB image by converting it to HSV and applying thresholding to isolate specific color regions. The output is a masked RGB image where only the selected color range is visible.

### How It Works
1. **Convert RGB to HSV:**
	- The input RGB image is converted to HSV color space for easier color-based segmentation.
2. **Set Thresholds:**
	- Thresholds for Hue, Saturation, and Value channels are defined to select the desired color range.
3. **Create Mask:**
	- A binary mask is created where pixels within the specified HSV range are set to 1 (true), and others to 0 (false).
4. **Apply Mask:**
	- The mask is applied to the original RGB image, setting pixels outside the range to black.

### Usage
1. Load your RGB image into the variable `RGB` in MATLAB:
	```matlab
	RGB = imread('your_image.jpg');
	segmentImage
	imshow(maskedRGBImage);
	```
2. Adjust the threshold values in the script to segment different colors as needed.

### Requirements
- MATLAB (any recent version)
- An RGB image to segment

### File Description
- `segmentImage.m`: MATLAB script for color-based image segmentation using HSV color space.

### Example
```matlab
RGB = imread('peppers.png');
segmentImage
imshow(maskedRGBImage);
```

### License
This project is licensed under the MIT License.
