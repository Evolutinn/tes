function [ jarak ] = fungsi_manhattan( data,i,inputX1,inputX2 )
%FUNGSI_MANHATTAN Summary of this function goes here
%   Detailed explanation goes here
         x1 = abs((data(i, 1)) - inputX1);
    	x2 = abs((data(i, 2)) - inputX2);
	
    jarak = x1 + x2;

end