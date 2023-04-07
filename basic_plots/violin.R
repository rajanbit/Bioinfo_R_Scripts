# Importing package
library(ggplot2)
library(reshape2)

# Reading datasets
data <- read.csv("../Test_Data/dummy_data1.csv", sep=",", header=T)

# Matrix manipulation
mat <- as.matrix(data[, -1])
rownames(mat) <- data$Sample

# Defining image parms
png(file = "violin.png", width=600, height=500)

# Plotting violin plot
ggplot(melt(mat), aes(x=Var2, y=value, group=Var2, color=Var2)) + 
	geom_violin(linewidth=1) + geom_boxplot(width=0.1)+
	theme(panel.background=element_blank(),panel.border = element_rect(colour = "black", fill=NA, linewidth=1 ), 
	axis.text.x = element_text(size = 12, angle = 90),axis.text.y = element_text(size = 12, angle = 90), legend.position = "none")+
	ggtitle(" ")+xlab("Genes")+ylab("Quantity")
	
# Saving image
dev.off()
