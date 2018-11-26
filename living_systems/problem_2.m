


WA = [132 120 118 130 130];
WB = [119 115 137 117 121];
WC = [115 137 117 131 141];
EA = [120 134 128 132 128];
EB = [143 129 141 127 145];
EC = [129 151 137 131 147];

drugs = [WA EA; WB EB; WC EC];

drugs = drugs' ;

[p table stats ] = anova2(drugs,5)

between = 4537.87 - 1865.6