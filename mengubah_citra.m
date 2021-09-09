%Gambar Asli
a = imread("ivan.jpg");
figure(1)
imshow(a)
title("Citra Berwarna")

% Dekomposisi keabuan
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
figure(2)
imshow(a_keabuan)
title('Citra Keabuan')

% Brightness
kecerahan = 85;
a_brightness = a + kecerahan;
figure(3)
imshow(a_brightness)
title('Citra Brightness')

% Kontras
kontras = 1.5;
a_kontras = a * kontras;
figure(4)
imshow(a_kontras)
title('Citra Kontras')

% Biner
a_biner = im2bw (a, 0.4);
figure (5)
imshow (a_biner)
title ('Citra Biner')

guide
