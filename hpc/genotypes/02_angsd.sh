
### First we generate a file with allele frequencies 
angsd -b filelist \
	-nThreads 4 \
	-gl 2 \
	-uniqueOnly 1 \
	-domajorminor 1 \
	-snp_pval 1e-6 \
	-domaf 1 \
	-minmaf 0.2 \
	-doCounts 1 \
	-doGlf 3 \
	-minMapQ 20 \
	-minInd 12 \
	-setMinDepthInd 5 \
	-minQ 30 \
	-setMinDepth 120 \
	-out porites

