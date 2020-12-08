# importing .tsv file as an argument
file <- commandArgs(trailingOnly = TRUE)

# reading the .tsv file and assigning its data into a variable (data)
data <- read.table(file, sep ="\t", header= TRUE)

# creating a png file
png(file = "barchart.png")

# defining the axis (y-axis and x-axis)
barplot(height = data$Value, names.arg = data$Name) 

# saving the plot to png file
dev.off()
