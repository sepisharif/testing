devtools::install_github("hadley/tidyverse")
devtools::install_github("njtierney/narnia")
devtools::install_github("njtierney/visdat")
library(devtools)
library(narnia)
library(visdat)
data60<-read.delim("T2D.ancestral.case.txt" , header=T)
sub.PCA.case1<-subset(data60,Ourcase %in% c("East Polynesian"), value=TRUE)
write.table(sub.PCA.case1,"~/Desktop/eastpoly.case.txt",sep="\t",row.names = FALSE,quote = FALSE)
eastpoly.case.missing<-read.delim("eastpoly.case.txt", header=T,na.strings = c(""," ","NA"))
dim(eastpoly.case.missing)
skim(eastpoly.case.missing)
skim_v(eastpoly.case.missing$BMI)
skim(eastpoly.case.missing) %>% View()
skim(eastpoly.case.missing) %>% filter(stat=="hist")
vis_dat(eastpoly.case.missing)
vis_dat(eastpoly.case.missing, sort_type = F)
vis_miss(eastpoly.case.missing, cluster = T)
miss_var_pct(eastpoly.case.missing)

# missing value percentage fro ancestral cases

data1<-miss_var_summary(eastpoly.case.missing)
data1[c(5,7:21,51,52),]
data1 %>% View()
str(eastpoly.case.missing)

sub.PCA.case2<-subset(data60, Ourcase %in% c("West Polynesian"),value=TRUE)
write.table(sub.PCA.case2,"~/Desktop/westpoly.case.txt",sep="\t",row.names = FALSE,quote = FALSE)
westpoly.case.missing<-read.delim("westpoly.case.txt", header=T,na.strings = c(""," ","NA") )
dim(westpoly.case.missing)
data2<-miss_var_summary(westpoly.case.missing)
data2[c(5,7:13,15:21,24,51,52),]
data2 %>% View()
str(westpoly.case.missing)

sub.PCA.case3<-subset(data60, Ourcase %in% c("European"),value=TRUE)
write.table(sub.PCA.case3,"~/Desktop/european.case.txt",sep="\t",row.names = FALSE,quote = FALSE)
european.case.missing<-read.delim("european.case.txt", header=T,na.strings = c(""," ","NA") )
dim(european.case.missing)
data3<-miss_var_summary(european.case.missing)
data3[c(6,8:21,23,51,52),]
data3 %>% View()
str(european.case.missing)

sub.PCA.case4<-subset(data60,Others %in% c("South Asian"),value=TRUE)
write.table(sub.PCA.case4,"~/Desktop/southasian.case.txt",sep="\t",row.names = FALSE,quote = FALSE)
southasian.case.missing<-read.delim("southasian.case.txt", header=T,na.strings = c(""," ","NA") )
dim(southasian.case.missing)
data4<-miss_var_summary(southasian.case.missing)
data4[c(6,8:16,50:52),]
data4 %>% View()
str(southasian.case.missing)
