# Reading dataframe
data <- read.table("dummy_data1.csv", sep =",", header= TRUE)

# Defining image parameter
png(file = "boxplot.png", width=600, height=500)

# Defining margins
par(mgp=c(4,1,0))
par(mar=c(6, 6, 1, 1))

# Plotting boxplot
plot <- boxplot(data[,-1],las=2, col=c("red", "blue", "cyan", "orange"))

# Specifying plot title
title(xlab='Genes', ylab= "Quantity", font.lab = 2)

# Saving figure
dev.off()
