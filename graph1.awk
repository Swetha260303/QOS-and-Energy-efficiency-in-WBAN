BEGIN{
	sim_end = 2.0;
	i=0;
	while (i<=sim_end) {setib[i]=0; i+=1;};
}

{
	if ($1=="r" && $4=="MAC") {
		setib[int($2)]+=$6;
	};
}

END{	
	i=0;
	while (i<=sim_end) {print i " " setib[i]*8.0; i+=1;};
} 
