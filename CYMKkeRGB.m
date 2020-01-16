clc; clear;

%%% proses merubah warna CMYK (Cyan, Magenta, Yellow dan Hitam) menjadi  RGB (Red, Green dan Blue)

%%% created by: Arif Mudi Priyatno 
%%% https://github.com/arifmudi
%%% https://www.linkedin.com/in/arifmudipriyatno/

%%% refensi : Pratt, W. K. 2001. Digital Image Processing; New York: John Wiley and Sons.
%% membaca file cmyk yang telah disimpan
load('CYMK.mat')

%% Normalisasi CMYK ke [0, 1]
C = double(C);
Y = double(Y);
M = double(M);
K = double(K);

if max(max(C)) || max(max(Y)) || max(max(M)) || max(max(K))
    C = double(C) / 255;
    M = double(M) / 255;
    Y = double(Y) / 255;
    K = double(K) / 255;
end

%% Proses CMYK ke RGB
u = 0.5;
b = 1;
[tinggi, lebar] = size(C);
for m=1: tinggi
    for n=1: lebar
        
        Kb = K(m,n) / b;
        if Kb == 1
            R(m,n)=0;
            G(m,n)=0;
            B(m,n)=0;
        else
            R(m,n) = 1 - (C(m, n) + u * Kb);
            G(m,n) = 1 - (M(m, n) + u * Kb);
            B(m,n) = 1 - (Y(m, n) + u * Kb);
            
            if R(m,n) == 1
                R(m,n) = 0;
            end
            if G(m,n) == 1
                G(m,n) = 0;
            end
            if B(m,n) == 1
                B(m,n) = 0;
            end
        end
    end
end

%% konversi RGB ke 255
R = uint8(R * 255);
G = uint8(G * 255);
B = uint8(B * 255);

imageRGB = cat(3,R,G,B);
imtool(imageRGB)