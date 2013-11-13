# This script locates one hospital
source("DataPreparation.R")

# Calculate column sums
dataPop <- data*po
dataPop[1:20,1:5]
data[1:20,1:5]
po[1:5]
col.sums <- apply(dataPop, 2, sum)
col.sums[1:5]
locPop <- cbind(col.sums,node=seq(1:1579))
locPop <- as.data.frame(locPop)
locPop[1:20,]
class(locPop$col.sums)

# Find minimum value
which(locPop$col.sums == min(locPop$col.sums)) 
locPop[742,]

# Average distance per person
(locPop$col.sums[742]/1000)/sum(po)

# Same node as Meng but different distance
