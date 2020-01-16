clc; clear;

%%% proses merubah warna RGB (Red, Green dan Blue) menjadi CMYK (Cyan,
%%% Magenta, Yellow dan Hitam)

%%% created by: Arif Mudi Priyatno 
%%% https://github.com/arifmudi
%%% https://www.linkedin.com/in/arifmudipriyatno/

%%% refensi : Pratt, W. K. 2001. Digital Image Processing; New York: John Wiley and Sons.
%% Proses Membaca Data
GambarRGB = imread('Halamandepan.png');

figure
imshow(GambarRGB)

%% memisahkan channel warna RGB
R = GambarRGB(:,:,1);
G = GambarRGB(:,:,2);
B = GambarRGB(:,:,3);

%% Normalisasi RGB ke [0, 1]
R = double(R);
G = double(G);
B = double(B);

if max(max(R)) > 1.0 || max(max(G)) || max(max(B))
   R = R / 255;
   G = G / 255;
   B = B / 255;
end

%% proses RGB ke CMYK
u = 0.5;
b = 1;

[tinggi, lebar] = size(R);
for m=1:tinggi
    for n=1:lebar
        Kb = min([(1-R(m,n)) (1-G(m,n)) (1-B(m,n))]);
        if Kb == 1
            C(m,n) = 0;
            M(m,n) = 0;
            Y(m,n) = 0;
            else    
            C(m,n) = (1.0 - R(m,n) - u * Kb);
            M(m,n) = (1.0 - G(m,n) - u * Kb);
            Y(m,n) = (1.0 - B(m,n) - u * Kb);
            K(m,n) = b * Kb;
        end
    end
end

%% Konversikan ke jangkauan [0,255]
C = uint8(C * 255);
M = uint8(M * 255);
Y = uint8(Y * 255);
K = uint8(K * 255);

save CYMK.mat C Y M K;