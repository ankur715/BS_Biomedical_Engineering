clear;clc

torWindSpeed=input('Input the wind speed for the tornado category ')

if torWindSpeed>=40 & torWindSpeed<=72
    torClassification='F0'
elseif torWindSpeed>=73 & torWindSpeed<=112
    torClassification='F1'
elseif torWindSpeed>=113 & torWindSpeed<=157
    torClassification='F2'
elseif torWindSpeed>=158 & torWindSpeed<=206
    torClassification='F3'
elseif torWindSpeed>=207 & torWindSpeed<=260
    torClassification='F4'
elseif torWindSpeed>=261 & torWindSpeed<=318
    torClassification='F5'
elseif torWindSpeed>=319 & torWindSpeed<=379
    torClassification='F6'   
else torWindSpeed>=380
    torClassification='You have entered an incorrect Wind Speed.'
end
