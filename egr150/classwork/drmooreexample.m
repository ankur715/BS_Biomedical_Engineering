clear;clc

prices=[1:5]
condTrue=(prices>=3)
condFalse=(prices<3)

pricesTrue=condTrue.*prices;
pricesFalse=condFalse.*prices;
pricesTrue=0.9*pricesTrue;

prices=pricesTrue+pricesFalse;

fprintf('The new prices are %.2f.\n',prices)