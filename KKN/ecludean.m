function [ jarak ] = ecludean( data,i,inputx1,inputx2 )
%ECLUDEAN Summary of this function goes here
%   Detailed explanation goes heres
        x1 = ((data(i, 1)) - inputx1)^2;
    	x2 = ((data(i, 2)) - inputx2)^2;
	
    jumlah = x1 + x2;
    jarak = sqrt(jumlah);
end
