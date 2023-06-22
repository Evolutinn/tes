clc
clear

% Import data
data = xlsread('data_latih.xlsx', 'C3:D27')
x = data(:, 1);
y = data(:, 2);

% Input data
inputX = input('Masukkan nilai X: ');

% Inisialisasi variabel
n = length(x);
jmlX = 0;
jmlY = 0;
jmlXY = 0;
jmlX2 = 0;

% Perulangan untuk menghitung jumlah masing-masing variabel
for i = 1:n
    xy = x(i) * y(i);
    x2 = x(i)^2;

    jmlX = jmlX + x(i);
    jmlY = jmlY + y(i);
    jmlXY = jmlXY + xy;
    jmlX2 = jmlX2 + x2;
end

% Menghitung rata-rata X dan Y
rataX = jmlX / n;
rataY = jmlY / n;

% Menghitung koefisien regresi
perAtas = jmlX * jmlY / n;
atas = jmlXY - perAtas;
perBawah = jmlX^2 / n;
bawah = jmlX2 - perBawah;

b = atas / bawah;
a = rataY - b * rataX;

% Menghitung nilai regresi untuk inputX yang diberikan
regresii = a + b * inputX;

% Menampilkan hasil
disp(['Hasil Predisksi Predisksi Adalah: ', num2str(regresii)]);
