# Bioinfo_R_Scripts
## R Scripts for Bioinformatics 
### line_chart.R
Make Line_Chart using data from a .tsv file

Example data:
```
X	Y
a	25
b	38
c	49
d	26
```
Save the following data within a tsv file (example.tsv) and run the script
```bash
$ Rscript line_chart.R example.tsv
```
### bar_chart.R
Make Bar_Chart using data from a .tsv file

Example data:
```
Name	Value
a	25
b	38
c	49
d	26
```
Save the example data within a tsv file (example.tsv) and run the script
```bash
$ Rscript bar_chart.R example.tsv
```
### heatmap.R
Make Heat_Map using data within the script itself
```
$ Rscript heatmap.R
```
### boxplot.R
Make Box_Plot using data from a .tsv file

Example data:
```
	gene1	gene2	gene3
sample1	2	23	22
sample2	4	21	1
sample3	4	11	22
sample4	6	18	9
```
Save the example data within a tsv file (example.tsv) and run the script
```
$ Rscript boxplot.R example.tsv
```
### volcano_plot.R
Make Volcano plot using DESeq2 output data ([volcano_plot_test_data](https://github.com/rajanbit/Bioinfo_R_Scripts/blob/main/Test_Data/volcano_plot_test_data.tsv))

```
$ Rscript volcano_plot.R <data.tsv>
```
