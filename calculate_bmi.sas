DATA HMWRK_1_2 DROP WT_INIT WT_FINAL;
	INPUT SUBJ HEIGHT WT_INIT WT_FINAL;
	BMI_INIT = (WT_INIT / 2.2) / (HEIGHT * .0254);
	BMI_FINAL = (WT_FINAL / 2.2) / (HEIGHT * .0254);
	BMI_DIFF = BMI_FINAL - BMI_INIT;
DATALINES;
007 68 155 150
002 72 250 240
005 63 240 200
001 70 345 298
;
PROC SORT;
	by SUBJ;
RUN;
PROC PRINT;
	VAR SUBJ HEIGHT BMI_INIT BMI_FINAL BMI_DIFF;
RUN;