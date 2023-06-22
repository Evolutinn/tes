function [ jarak ] = fungsi_mingkowski( x,p )
jml_selisih =0
for i = 1 : length(x)
 selisih = (x(1,i) - x(2,i))^p
 jml_selisih = jml_selisih + selisih
end
jarak = (jml_selisih) ^ (1/p)
end

