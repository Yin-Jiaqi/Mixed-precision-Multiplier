# Mixed-precision-Multiplier


resorce usage:

	             slack	latency(cycle)	latency(ns)	interval	pipelined	bram	      dsp	        ff          lut 
mm	           0	    33783	          1.689e+05	  33776		            174 (4%)	  40 (~0%)	  22509(~0%)	25333 (2%)
mm_large									
mm_int16	     0	    33783	          1.689e+05	  33776		            174 (4%)	  8 (~0%)	    14100(~0%)	19841 (1%)
mm_int16_large 0	    -	              -	-		                          2906 (67%)	8192(119%)	972075(41%)	846563 (71%)
mm_int8_large	 0	    -	              -	-		                          2330 (53%)	6336(92%)	  759786(32%)	978261(82%)
