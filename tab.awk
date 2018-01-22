#!/usr/bin/awk -f
# Usage:
# tab.awk w=10 file.txt
BEGIN {
	if(length(w) == 0)
		w = 10
}
NR==1 {
	head = sprintf("%-*s", w, substr($1,0,w))
	for(i=2; i<=NF; i++)
		head = head sprintf("|%-*s", w, substr($i,0,w))
}
{
	printf "%-*s", w, substr($1,0,w)
	for(i=2; i<=NF; i++)
		printf "|%-*s", w, substr($i,0,w)
	print ""
}
NR%20==0 {
	print head
}
