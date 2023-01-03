# Reading dataframe
data <- read.table(file="dummy_data1.csv", header = TRUE, sep = ",")

# Transforming dataframe to matrix
mat <- as.matrix(data[, -1])

# Adding rownames to matrix
rownames(mat) <- data$Sample

# Defining image parameter
png(file = "barplot.png", width=700, height=400)

# Plotting barplot
barplot(mat,col = c("red", "blue", "cyan", "orange"), beside = TRUE)

# Specifying legend 
legend(x=1,y=max(mat), legend=c("Sample1","Sample2", "Sample3", "Sample4" ),fill=c("red", "blue", "cyan", "orange"))

# Saving figure
dev.off()
