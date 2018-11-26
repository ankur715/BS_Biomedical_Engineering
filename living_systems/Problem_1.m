

drugAF = [108 112 92 ];
drugAM = [118 114 106 ];
drugBF = [108 114 104 ];
drugBM = [144 138 142 ];

drugAB = [drugAM drugBM; drugAF drugBF];
drugAB = drugAB';
%TSS = sum((DrugAB-MeanDrugAB).^2)

% %WGSS = sum((drugAF-MeanDrugAB).^2) + sum((drugAM-MeanDrugAB).^2) + sum((drugBF-MeanDrugAB).^2) + sum((drugBM-MeanDrugAB).^2)

% 
 [p table stats ] = anova2(drugAB,3)
 
 between = 1827.7 - 1221.33