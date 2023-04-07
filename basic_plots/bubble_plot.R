# Loading packages
library(ggplot2)

# Reading datasets
data <- read.table(file="../Test_Data/bubble_data.tsv", header = TRUE, sep = "\t")

# Defining image parameter
png(file = "bubble_plot.png", width=800, height=600)

# Plotting bubble plot
ggplot(data)+geom_point(aes(x=len_Gene, y=len_ORF, size=n_Exons, color=type_Gene))+
	scale_size(range = c(1, 20))+
	theme(axis.text=element_text(size=13),
		axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1),
		panel.background=element_blank(),
		panel.border=element_rect(colour = "black", fill=NA, linewidth=1 ),
		text = element_text(size=15), 
		legend.text = element_text(size = 15))+
	ggtitle("Bubble plot") + xlab("Gene Length") + ylab("ORF Length") + labs(color = "Gene Type", size="No. of Exons")

# Saving plot
dev.off()
