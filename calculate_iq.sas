DATA IQ_AND_TEST_SCORES;
	INPUT ID	   1-3
		  IQ	   4-6
		  MATH     7-9
		  SCIENCE  10-12;
		  OVERALL = ((IQ + MATH + SCIENCE-500) / 3);
	IF IQ <= 100 THEN GROUP=1;
	ELSE IF IQ >= 101 AND IQ <= 140 THEN GROUP=2;
	ELSEGROUP=3;
DATALINES;
001128550590
002104490501
003140570690
004115510510
;

PROC SORT;
	BY IQ;
RUN;PRROC FREQ;taTABLESROUP;
;
RUN;
PROC PRINT;UN;
