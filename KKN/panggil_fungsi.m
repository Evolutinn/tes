clear
clc

[~, klasifikasi] =  xlsread('data_training','sheet1','C5:E10')
data = xlsread('data_training','sheet1','C5:E10');
inputx1 = input('masukkan nilai x1 :');
inputx2 = input('masukkan nilai x2 :');
k = input('masukkan nilai k :');

matriksJarak = [];
for i = 1 : length(klasifikasi)
%     jarak = ecludean(data,i,inputx1,inputx2);
    jarak = fungsi_manhattan(data,i,inputx1,inputx2);
%         jarak = fungsi_minkowski(data,i,inputx1,inputx2,2);
    matriksJarak = [matriksJarak; jarak];
end
klasifikasii =[];
for i =1: length(klasifikasi);
klasifikasai = [[klasifikasi(i,1)] [matriksJarak(i,1)]];
klasifikasii = [klasifikasii; klasifikasai];
end
klasifikasii

X = klasifikasi;
Y = matriksJarak;

[Ysort,I] = sort(Y);

Xsorted = X(I);
klasifikasiii =[];
for i =1: length(klasifikasi)
klasifikasai = [[Xsorted(i,1)] [Ysort(i,1)]];
klasifikasiii = [klasifikasiii; klasifikasai ];
end
klasifikasiii

b=0;
j=0;

for i =1: k
    if strcmp(klasifikasiii(i,1), 'Baik')
        b= b+1;
    else
        j=j+1;
    end
end
   if b>j
       disp('Hasil Prediksi masuk ke Kategori Baik')
   else
       disp('Hasil Prediksi masuk ke Kategori Jelek')
   end