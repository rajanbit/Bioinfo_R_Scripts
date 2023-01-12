# Loading libraries
library(ggplot2)
library(reshape2)

# Reading dataframe
data <- read.table("dummy_data1.csv", sep =",", header= TRUE)

# Transforming dataframe to matrix
mat <- as.matrix(data[, -1])

# Adding rownames to matrix
rownames(mat) <- data$Sample

# Defining image parameter
png(file = "linechart.png", width=600, height=500)

# Defining margins
par(mgp=c(4,1,0))
par(mar=c(6, 6, 1, 1))

# Plotting linechart
ggplot(melt(mat))+geom_line(aes(x=Var2, y=value, group=Var1, color=Var1))+ theme_classic()+

# Specifying plot title
ggtitle(" ") + xlab("Genes") + ylab("Quantity") + labs(color = "Samples")

# Saving figure
dev.off()
