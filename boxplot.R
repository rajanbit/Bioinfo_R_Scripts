# importing .tsv file as an argument
file <- commandArgs(trailingOnly = TRUE)

# reading the .tsv file and assigning its data into a variable (data)
data <- read.table(file, sep ="\t", header= TRUE)

# creating a png file
png(file = "boxplot.png", width=1000, height=800)

# margin on bottom and left
par(mar=c(14, 8, 1, 1))

# draw plot
plot <- boxplot(data[,-1],las=2)

