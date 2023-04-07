# Importing modules
library("corrplot")

# Reading data
data <- read.table(file="../Test_Data/dummy_data1.csv", header = TRUE, sep = ",")

# Defining image parameter
png(file = "correlation.png", width=500, height=400)

# Plotting correlation plot
corrplot(cor(data[-1]))

# Saving image
dev.off()

