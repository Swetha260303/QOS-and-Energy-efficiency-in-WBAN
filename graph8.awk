BEGIN{
	sim_end = 1.0;
	i=0;
	while (i<=sim_end) {sec[i]=0; i+=1;};
}

{
	if ($1=="r" && $4=="MAC") {
		sec[int($2)]+=$8;
	};
}

END{	
	i=0;
	while (i<=sim_end) {print i " " sec[i]*.008; i+=1;};
} 
