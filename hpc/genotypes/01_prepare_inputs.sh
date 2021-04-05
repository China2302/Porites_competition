do_sort_index_subset(){
	f=$1
	fs=${f%.bam}_sorted.bam
	samtools sort -@ 4 $f -o ${fs}
	samtools index ${fs}
	samtools view -b -L good_clusters_regions.bed ${fs}  > ${f%.bam}_good.bam
	samtools index ${f%.bam}_good.bam
}

cat species1_good.PdPf_transfuse95_cons.fa | bioawk -c fastx '{printf("%s\t%s\t%s\n", $name,0,length($seq))}' > regions.bed
while read gc;do grep "${gc}" regions.bed | head -n 1;done < good_clusters.txt > good_clusters_regions.bed

export -f do_sort_index_subset

parallel -J 12 do_sort_index_subset ::: *[AGCT].03.bam

