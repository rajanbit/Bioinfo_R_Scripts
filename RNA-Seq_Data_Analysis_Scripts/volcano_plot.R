## Creating volcano plot from input table with 
## log2foldchange and p-value

## Loading packages
library(ggplot2)
library(ggrepel)

## Reading input file
tsv_file <- commandArgs(trailingOnly = TRUE)
res <- read.table(tsv_file, header = TRUE,sep = "\t")

## Plotting
png(file = "plot.png", width=800, height=800)
pval_threshold <- 0.05
logfc_threshold <- 1.5
deseq.threshold <- as.factor(abs(res$log2FoldChange) >= logfc_threshold & res$pvalue < pval_threshold)
xi <- which(deseq.threshold == TRUE)
plot <- ggplot(data=res, aes(x=log2FoldChange, y=-log10(pvalue), colour=deseq.threshold)) +
	geom_point(alpha=0.4, size=3) + 
	theme(legend.position = "none") +
	theme_bw() + theme(legend.position="none") +
	xlab("Log2 Fold Change") + ylab("-log10(p-value)") + ggtitle("Plot Title") +
	geom_text_repel(aes(label=ifelse(name != "", name, ''),color="purple"), max.overlaps = Inf,segment.color = "orange")
plot
dev.off()

# Usage: Rscript volcano_plot.R <input_table.tsv>
