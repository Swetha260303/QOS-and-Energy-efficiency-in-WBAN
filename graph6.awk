BEGIN{
	sim_end = 1.5;
	i=0;
	while (i<=sim_end) {rmer[i]=0; i+=1;};
}

{
	if ($1=="r" && $7=="ack") {
		rmer[int($2)]+=$6;
	};
}

END{	
	i=0;
	while (i<=sim_end) {print i " " rmer[i]*12.0; i+=1;};
} 
