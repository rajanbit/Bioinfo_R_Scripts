# Packages
library(ggplot2)

# Reading datasets
data <- read.table(file="../Test_Data/areaChart_data.tsv", header = TRUE, sep = "\t")

# Defining image parameter
png(file = "areaChart.png", width=900, height=500)

# Plotting stacked area chart
ggplot(data, aes(x=Time, y=Expr_Value, fill=Gene)) + geom_area() + theme_classic()+

# Specifying plot title
ggtitle("Area Chart") + xlab("Time (in seconds)") + ylab("Expression Value") + labs(fill = "Genes")

# Saving plot
dev.off()
