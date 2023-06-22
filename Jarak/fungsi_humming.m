function [ jarak] = fungsi_humming(x)
%FUNGSI_HUMMING Summary of this function goes here
%   Detailed explanation goes here
jml_selisih = 0
for i = 1 : length(x)
 selisih = abs(x(1,i) - x(2,i))
 jml_selisih = jml_selisih + selisih
end
jarak = jml_selisih / length(x)

end

