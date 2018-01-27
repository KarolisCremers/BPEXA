source("https://bioconductor.org/biocLite.R")
biocLite("Rsubread")
biocLite("DESeq")


library(Rsubread)
library(DESeq)



counttable <- read.csv("/home/karolis/bpexa_test/counttable.csv", header=TRUE, row.names=1)
counttable
counttableDesign = data.frame(row.names = colnames( counttable ), condition = c( "test", "test","control", "control"), libType = c( "single-end", "single-end", "single-end", "single-end"))
condition = factor(c("test", "test", "control", "control"))
cds = newCountDataSet( counttable, condition )
cds
cds = estimateSizeFactors( cds )
sizeFactors(cds)
head( counts( cds, normalized=TRUE ) )
cds = estimateDispersions( cds )

#variance estimation
str( fitInfo(cds) )
plotDispEsts( cds )
head( fData(cds) )

# dp calling
res = nbinomTest( cds, "test", "control" )
head(res)
plotMA(res)
resSig = res[ res$padj < 0.7, ]
head( resSig[ order(resSig$pval), ] )
