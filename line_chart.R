# library ggplot2
library(ggplot2)

# importing .tsv file as an argument
tsv_file <- commandArgs(trailingOnly = TRUE)

# reading the .tsv file and assigning its data into a variable (dataset)
dataset <- read.table(tsv_file, sep ="\t", header= TRUE)

# creating a png file
png(file = "linechart.png", width=800, height=400)

# defining the axis (y-axis and x-axis)
ggplot(data = dataset, aes(y = Y, x = X, group=1)) + geom_line() + geom_point()

# saving the plot to png file
dev.off()
