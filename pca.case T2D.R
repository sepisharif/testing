dataextraction<-read.delim( "T2D.criteria.txt", header=T)
library(dplyr)
dataextraction %>% select (DIABETES)


