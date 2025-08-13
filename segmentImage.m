% Convert RGB image to HSV color space
I = rgb2hsv(RGB);

% Define thresholds for channel 1 (Hue)
channel1Min = 0.50;
channel1Max = 0.65;

% Define thresholds for channel 2 (Saturation)
channel2Min = 0.20;
channel2Max = 1.00;

% Define thresholds for channel 3 (Value)
channel3Min = 0.20;
channel3Max = 1.00;

% Create mask based on thresholds
BW = (I(:,:,1) >= channel1Min) & (I(:,:,1) <= channel1Max) & ...
     (I(:,:,2) >= channel2Min) & (I(:,:,2) <= channel2Max) & ...
     (I(:,:,3) >= channel3Min) & (I(:,:,3) <= channel3Max);

% Create masked RGB image
maskedRGBImage = RGB;
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;