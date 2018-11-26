clear;clc

hurrWindSpeed=input('To find what type of stor, input the wind speed? ')

if hurrWindSpeed>=0 & hurrWindSpeed<=38
    hurrClassification='Tropical Depression'
elseif hurrWindSpeed>=39 & hurrWindSpeed<=73
    hurrClassification='Tropical Storm'
elseif hurrWindSpeed>=74 & hurrWindSpeed<=95
    hurrClassification='Category One'
elseif hurrWindSpeed>=96 & hurrWindSpeed<=110
    hurrClassification='Category Two'
elseif hurrWindSpeed>=111 & hurrWindSpeed<=129
    hurrClassification='Category Three'
elseif hurrWindSpeed>=130 & hurrWindSpeed<=156
    hurrClassification='Category Four'
elseif hurrWindSpeed>=157
    hurrClassification='Category Five'
else hurrClassification='You have entered an incorrect Wind Speed.' 
end