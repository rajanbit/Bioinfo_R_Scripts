# Reading dataframe
data <- read.table(file="dummy_data1.csv", header = TRUE, sep = ",")

# Transforming dataframe to matrix
mat <- as.matrix(data[, -1])

# Adding rownames to matrix
rownames(mat) <- data$Sample

# Defining image parameter
png(file = "heatmap.png", width=500, height=400)

# Plotting heatmap
heatmap(as.matrix(mat), col = cm.colors(50))

# Specifying legend 
legend(x="right", legend=c(min(mat),mean(mat), max(mat)),fill=cm.colors(3))

# Saving figure
dev.off()

