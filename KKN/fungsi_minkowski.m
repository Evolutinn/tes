function [ jarak ] = fungsi_minkowski( data,i,inputX1,inputX2, p )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
         x1 = abs((data(i, 1)) - inputX1)^p;
    	x2 = abs((data(i, 2)) - inputX2)^p;
	
    jumlah = x1 + x2;
    jarak = (jumlah) ^ (1/p);
    

end