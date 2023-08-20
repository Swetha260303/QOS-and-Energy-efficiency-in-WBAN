BEGIN{
	sim_end = 5.0;
	i=0;
	while (i<=sim_end) {sec[i]=0; i+=1;};
}

{
	if ($1=="r" && $4=="RTR") {
		sec[int($2)]+=$8;
	};
}

END{	
	i=0;
	while (i<=sim_end) {print i " " sec[i]*.005; i+=1;};
} 



