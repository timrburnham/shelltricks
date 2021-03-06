#!/usr/bin/awk -f
# Name cut. Determines field names from header row,
# prints columns specified at prompt.
# Usage:
# ncut cols=id,name file.txt
NR==1 {
    split(tolower(cols),out,",")
    for(i=1; i<=NF; i++)
        ix[tolower($i)] = i
}
NR>1 {
    printf "%s", $ix[out[1]]
    for(i=2; i<=length(out); i++)
        printf "%s%s", FS, $ix[out[i]]
    print ""
}
