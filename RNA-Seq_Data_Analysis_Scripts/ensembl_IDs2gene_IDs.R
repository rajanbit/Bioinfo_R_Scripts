## Accessing Ensembl annotation with biomaRt and 
## adding matching gene IDs to table containing
## Ensembl IDs

## Installing biomaRt

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("biomaRt")

## Accessing Ensembl annotation with biomaRt

library('biomaRt')
ensembl = useEnsembl(biomart="ensembl", dataset="hsapiens_gene_ensembl")
annot_df <- getBM(attributes=c('ensembl_gene_id','hgnc_symbol'),  mart = ensembl)

## Adding gene IDs

file <- commandArgs(trailingOnly = TRUE)

# Note header of Ensembl IDs column in input table should be "ensembl_gene_id"

input_df <- read.table(file, sep ="\t", header= TRUE)
dftemp <- merge(input_df, annot_df, by="ensembl_gene_id")
write.table(dftemp, file="output.tsv", sep="\t", quote=F, row.names=F)

## Usage: Rscript ensembl_IDs2gene_IDs.R <input_table.tsv>
