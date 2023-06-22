clc
clear

data_tes = xlsread ('data_latih','sheet1','D6:F7');
data_tes;

hasil_euclidean = fungsi_euclidean(data_tes);
hasil_manhattan = fungsi_manhattan(data_tes);
hasil_humming = fungsi_humming(data_tes);
hasil_mingkowski = fungsi_mingkowski(data_tes,4);

disp(data_tes);
disp(['Jarak_Euclidean = ',num2str(hasil_euclidean)]);
disp(['Jarak_Manhattan = ',num2str(hasil_manhattan)]);
disp(['Jarak_Humming = ', num2str(hasil_humming)]);
disp(['Jarak_Mikowski = ',num2str(hasil_mingkowski)]);