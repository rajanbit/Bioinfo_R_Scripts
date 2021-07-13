data <- read.table(header = TRUE, text = "
Data1,Data2,Data3,Data4,Data5
Sample1,10,20,30,40,50
Sample2,20,45,55,65,80
sample3,5,20,30,40,50
Sample4,15,25,5,35,45"
,sep = ",")
png(file = "heatmap.png", width=600, height=400)
heatmap(as.matrix(data))
dev.off()
