img = imread("boston night.jpg");
% Convert to HSV
imgHSV = rgb2hsv(img);

% Extract the Value channel
V = imgHSV(:,:,3);

%% 1. Gamma correction (γ = 1/2)
Vgamma = V .^ (1/2);
imgHSV_gamma = imgHSV;
imgHSV_gamma(:,:,3) = Vgamma;
imgGamma = hsv2rgb(imgHSV_gamma);
imgGamma = im2uint8(imgGamma);

%% 2. imadjust
Vadjust = imadjust(V);
imgHSV_adjust = imgHSV;
imgHSV_adjust(:,:,3) = Vadjust;
imgAdjust = hsv2rgb(imgHSV_adjust);
imgAdjust = im2uint8(imgAdjust);

%% 3. histeq
Veq = histeq(V);
imgHSV_eq = imgHSV;
imgHSV_eq(:,:,3) = Veq;
imgEq = hsv2rgb(imgHSV_eq);
imgEq = im2uint8(imgEq);

%% 4. adapthisteq
Vadapt = adapthisteq(V);
imgHSV_adapt = imgHSV;
imgHSV_adapt(:,:,3) = Vadapt;
imgAdapt = hsv2rgb(imgHSV_adapt);
imgAdapt = im2uint8(imgAdapt);


% Uncomment the below code to view four images
% montage({imgGamma, imgAdjust, imgEq, imgAdapt})