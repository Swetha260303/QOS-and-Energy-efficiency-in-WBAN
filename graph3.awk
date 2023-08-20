BEGIN{
	sim_end = 2.0;
	i=0;
	while (i<=sim_end) {rmer[i]=0; i+=2;};
}

{
	if ($1=="s" && $4=="MAC") {
		rmer[int($2)]+=$6;
	};
}

END{	
	i=0;
	while (i<=sim_end) {print i " " rmer[i]*3.0; i+=1;};
} 
