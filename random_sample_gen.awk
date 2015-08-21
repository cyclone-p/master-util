BEGIN 	{
			srand()
			PROCINFO["sorted_in"] = "@ind_num_asc"	
			for (i = 1; i <= ssize; i++) {
				val = int(rand() * rowct)
				rna[val] = val
			}
		}	

		{
			if ((NR == 1) || (NR in rna)) {
				print $0 > "sample.csv"
			}
		}