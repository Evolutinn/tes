function [jarak] = fungsi_euclidean(x)
jml_selisih = 0
for i = 1 : length(x) 
  selisih = (x(1,i) - x(2,i))^2
  jml_selisih = jml_selisih + selisih;
end
jarak = sqrt(jml_selisih) 
end

