### Then we extract the frequency column from the allele frequency file and remove the header (to make it in the format NgsRelate needs)
zcat porites.mafs.gz | cut -f5 |sed 1d >freq

### run NgsRelate
 ./ngsRelate/ngsRelate  -g porites.glf.gz -n 12 -f freq  -O porites_relate
 

