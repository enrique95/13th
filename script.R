# Package installation
install.packages("plm")
library(plm)
install.packages("stargazer")
library(stargazer)
install.packages("robustbase")
library(robustbase)
install.packages("dplyr")
library(dplyr)
install.packages("lmtest")
library(lmtest)
install.packages("ipumsr")
library(ipumsr)
install.packages("rmarkdown")
library(rmarkdown)
install.packages("tesseract")
library(tesseract)
install.packages("pdftools")
library(pdftools)
install.packages("sf")
library(sf)
# convert this into a rmd but first try with the .tex file
#use pandoc_convert"thesis.tex", to= "markdown", output = "thesis.md", citeproc = TRUE) and try to add the .bib 
# and see if it can load the bibliography too
# check the path inside the .tex file in case it gives you some problems

#indicate the paths of the data and shape for the ipumsr functions to read from

pathshp <- "nhgis0027_shape.zip"
pathcsv <- "nhgis0027_csv.zip"
pathcb<- "nhgis0027_csv.zip"

#uploading the csv datasets (do not add year after "ds*" otherwise it can't be easily copied and pasted)


csv1850a <- read_nhgis(data_file = pathcsv, data_layer=contains("ds9"))
csv1850b <- read_nhgis(data_file = pathcsv, data_layer=contains("ds10"))
csv1860a <- read_nhgis(data_file = pathcsv, data_layer=contains("ds13"))
csv1860b <- read_nhgis(data_file = pathcsv, data_layer=contains("ds14"))
csv1870a <- read_nhgis(data_file = pathcsv, data_layer=contains("ds16"))
csv1870b <- read_nhgis(data_file = pathcsv, data_layer=contains("ds17"))
csv1880a <- read_nhgis(data_file = pathcsv, data_layer=contains("ds22"))
csv1880b <- read_nhgis(data_file = pathcsv, data_layer=contains("ds23"))
  
#merging the csv datasets
csv1850 <- left_join(csv1850a,csv1850b, by = "GISJOIN")
csv1860 <- left_join(csv1860a,csv1860b, by = "GISJOIN")
csv1870 <- left_join(csv1870a,csv1870b, by = "GISJOIN")
csv1880 <- left_join(csv1880a,csv1880b, by = "GISJOIN")

#uploading shape files
shape1850 <-  read_ipums_sf(shape_file = pathshp, shape_layer = contains("1850"))
shape1860 <-  read_ipums_sf(shape_file = pathshp, shape_layer = contains("1860"))
shape1870 <-  read_ipums_sf(shape_file = pathshp, shape_layer = contains("1870"))
shape1880 <-  read_ipums_sf(shape_file = pathshp, shape_layer = contains("1880"))


#joining csv and shape
data1850 <- ipums_shape_inner_join(data = csv1850,shape_data = shape1850, by = "GISJOIN", verbose=TRUE)
data1860 <- ipums_shape_inner_join(data = csv1860,shape_data = shape1860, by = "GISJOIN", verbose=TRUE)
data1870 <- ipums_shape_inner_join(data = csv1870,shape_data = shape1870, by = "GISJOIN", verbose=TRUE)
data1880 <- ipums_shape_inner_join(data = csv1880,shape_data = shape1880, by = "GISJOIN", verbose=TRUE)

pngcensustobcot <- pdftools::pdf_convert('https://www2.census.gov/library/publications/1960/compendia/hist_stats_colonial-1957/hist_stats_colonial-1957-chK.pdf', page = 46, dpi = 1200)
tabletobcot <- tesseract::ocr(pdftools::pdf_convert('https://www2.census.gov/library/publications/1960/compendia/hist_stats_colonial-1957/hist_stats_colonial-1957-chK.pdf', page = 46, dpi = 600))

# #cotton price per pound 1870
# cottonprice70 <- 12.1

# Transforming and creating variables
data60ag$FARMS <- rowSums(data60ag[,c(30:36)])
data60ag$FORATIO <- (data60ag$AH5004+data60ag$AH5005+data60ag$AH5006)/data60ag$AG3001
data70ag$FORATIO <- data70ag$ALB002/data70ag$AJ3001
data60ag$SLAVES <- data60ag$AGU001/data60ag$AG3001
data60ag$SLAVES[is.na(data60ag$SLAVES)]<-0

# Merging slave data in the 1870 dataframe
SLAVES60 <- data60ag[,c(1:7,ncol(data60ag))]
SLAVES60$YEAR <- 1870
data70ag <- merge(data70ag,SLAVES60)

# Calculating the farm price index in 1860's level
index70=112/77

# Renaming variables in 1860 dataframe
data60ag <- rename(data60ag, STOT=AGU001)
data60ag <- rename(data60ag, TOTPOP=AG3001)
data60ag$FORPOP <- rowSums(data60ag[, c(23:25)])
data60ag <- rename(data60ag, LIVESTOCK=AGX001)
data60ag <- rename(data60ag, AGOUT2=AG2002)
data60ag <- rename(data60ag, AGOUT1=AG2001)
data60ag <- rename(data60ag, AGOUT3=AGQ001)
data60ag$AMEN <- 0
data60ag <- rename(data60ag, MACHINE=AGV002)

# Renaming variables in 1870 dataframe
data70ag <- rename(data70ag, TOTPOP=AJR001)
data70ag <- rename(data70ag, FORPOP=ALB002)
data70ag <- rename(data70ag, LIVESTOCK=AJZ001)
data70ag <- rename(data70ag, AGOUT3=AJX001)
data70ag$LIVESTOCK <- data70ag$LIVESTOCK/index70
data70ag$AGOUT3 <- data70ag$AGOUT3/index70
data70ag$AMEN <- 1
data70ag <- rename(data70ag, FARMS=AKP001)
data70ag <- rename(data70ag, MACHINE=AJV002)
data70ag$MACHINE <- data70ag$MACHINE/index70

# Calculating population change
data60ag$MALEPOP60 <- rowSums(data60ag[,c(40:51)])
data70ag <- rename(data70ag, MALEPOP70=AKH001)
MALEPOPGROWTH60 <- data60ag[,c(1,3:7,74)]
MALEPOPGROWTH70 <- data70ag[,c(1,3:7,21)]
MALEPOPGROWTH <- merge(MALEPOPGROWTH60,MALEPOPGROWTH70)
MALEPOPGROWTH$POPGROWTH <- log(MALEPOPGROWTH$MALEPOP70)-log(MALEPOPGROWTH$MALEPOP60)
MALEPOPGROWTH <- MALEPOPGROWTH[,c(1:6,9)]
data60ag <- merge(data60ag,MALEPOPGROWTH)
data70ag=merge(data70ag,MALEPOPGROWTH)
rm(MALEPOPGROWTH60,MALEPOPGROWTH70)

#Creating ratios of products over total production
data60part <- read.csv("https://raw.githubusercontent.com/enrique95/TFG/master/nhgis0023_ds13_1860_county.csv")
data60ag <- merge(data60ag,data60part)
data60ag$WHEATRAT <- data60ag$AG1001/data60ag$AGOUT3
data60ag$RYERAT <- data60ag$AG1002/data60ag$AGOUT3
data60ag$CORNRAT <- data60ag$AG1003/data60ag$AGOUT3
data60ag$OATRAT <- data60ag$AG1004/data60ag$AGOUT3
data60ag$RICERAT <- data60ag$AG1005/data60ag$AGOUT3
data60ag$TOBACCORAT <- data60ag$AG1006/data60ag$AGOUT3
data60ag$COTTONRAT <- data60ag$AG1007/data60ag$AGOUT3
data60ag$WOOLRAT <- data60ag$AG1008/data60ag$AGOUT3
data60ag$PEARAT <- data60ag$AG1009/data60ag$AGOUT3
data60ag$IRPOTATORAT <- data60ag$AG1010/data60ag$AGOUT3
data60ag$SWPOTATORAT <- data60ag$AG1011/data60ag$AGOUT3
data60ag$BARLEYRAT <- data60ag$AG1012/data60ag$AGOUT3
data60ag$BUCKWHEATRAT <- data60ag$AG1013/data60ag$AGOUT3
data60ag$WINERAT <- data60ag$AG1014/data60ag$AGOUT3
data60ag$BUTTERRAT <- data60ag$AG1015/data60ag$AGOUT3
data60ag$CHEESERAT <- data60ag$AG1016/data60ag$AGOUT3
data60ag$HAYRAT <- data60ag$AG1017/data60ag$AGOUT3
data60ag$CLOVERRAT <- data60ag$AG1018/data60ag$AGOUT3
data60ag$GRASSRAT <- data60ag$AG1019/data60ag$AGOUT3
data60ag$HOPSRAT <- data60ag$AG1020/data60ag$AGOUT3
data60ag$DEWHEMPRAT <- data60ag$AG1021/data60ag$AGOUT3
data60ag$WATERHEMPRAT <- data60ag$AG1022/data60ag$AGOUT3
data60ag$OTHERHEMPRAT <- data60ag$AG1023/data60ag$AGOUT3
data60ag$FLAXRAT <- data60ag$AG1024/data60ag$AGOUT3
data60ag$FLAXSEEDRAT <- data60ag$AG1025/data60ag$AGOUT3
data60ag$SILKRAT <- data60ag$AG1026/data60ag$AGOUT3
data60ag$MAPLESUGARRAT <- data60ag$AG1027/data60ag$AGOUT3
data60ag$CANESUGARRAT <- data60ag$AG1028/data60ag$AGOUT3
data60ag$MAPLEMOLRAT <- data60ag$AG1029/data60ag$AGOUT3
data60ag$CANEMOLRAT <- data60ag$AG1030/data60ag$AGOUT3
data60ag$SORGHUMMOLRAT <- data60ag$AG1031/data60ag$AGOUT3
data60ag$BEESWAXRAT <- data60ag$AG1032/data60ag$AGOUT3
data60ag$HONEYRAT <- data60ag$AG1033/data60ag$AGOUT3
data70part <- read.csv("https://raw.githubusercontent.com/enrique95/TFG/master/nhgis0023_ds16_1870_county.csv")
data70ag <- merge(data70ag,data70part)
data70ag$WHEAT <- data70ag$AJ1001+data70ag$AJ1002
data70ag$WHEATRAT <- (data70ag$WHEAT*1.04)/data70ag$AGOUT3
data70ag$RYERAT <- (data70ag$AJ1003*0.805)/data70ag$AGOUT3
data70ag$CORNRAT <- (data70ag$AJ1004*0.52)/data70ag$AGOUT3
data70ag$OATRAT <- (data70ag$AJ1005*0.43)/data70ag$AGOUT3
data70ag$BARLEYRAT<- (data70ag$AJ1006*0.85)/data70ag$AGOUT3
data70ag$BUCKWHEATRAT <- (data70ag$AJ1007*0.797)/data70ag$AGOUT3
data70ag$TOBACCORAT <- (data70ag$AJ1009*9.7/100)/data70ag$AGOUT3
data70ag$COTTONRAT <- (data70ag$AJ1010*9.71/100*400)/data70ag$AGOUT3
data70ag$WOOLRAT <- (data70ag$AJ1011*22.2/100)/data70ag$AGOUT3
data70ag$IRPOTATORAT <- (data70ag$AJ1013*1.180*0.60)/data70ag$AGOUT3
data70ag$SWPOTATORAT <- (data70ag$AJ1014*1.610*0.50)/data70ag$AGOUT3
data70ag$BUTTERRAT <- (data70ag$AJ1016*38.1/100)/data70ag$AGOUT3
data70ag$HAYRAT <- (data70ag$AJ1019*14.45)/data70ag$AGOUT3


# Combining both dataframes
common_cols <- intersect(colnames(data60ag), colnames(data70ag))
datotalag <- rbind(data60ag[common_cols],data70ag[common_cols])

# Clasifying states
datotalag$CSA=ifelse(datotalag$STATE%in%c("South Carolina","Mississippi", "Florida","Alabama","Georgia", "Louisiana", "Texas","Virginia","Arkansas","Tennessee","North Carolina", "Missouri", "Kentucky"),1,0)
#try with CSA= datotalag$STATE%in%c("South Carolina","Mississippi", "Florida", 
#"Alabama","Georgia", "Louisiana", "Texas","Virginia","Arkansas","Tennessee",
#"North Carolina", "Missouri", "Kentucky")
#and then subset in the model
# Creating the interactions
datotalag$SLADUM=ifelse(datotalag$SLAVES>0,1,0)
datotalag$DID=datotalag$SLADUM*datotalag$AMEN
datotalag$DIDRAT=datotalag$SLAVES*datotalag$AMEN

# Creating logarithms 
datotalag = datotalag %>% mutate(LAGOUT3=log(AGOUT3))
datotalag = datotalag %>% mutate(LMACHINE=log(MACHINE))
datotalag = datotalag %>% mutate(LLIVESTOCK=log(LIVESTOCK))
datotalag = datotalag %>% mutate(LFARMS=log(FARMS))

# Eliminating NA and INF values
datotalag <- datotalag[is.finite(rowSums(datotalag[,c(8:ncol(datotalag))])),]



#--------------

#Linear models without population growth
DIDRATNOPOP=lm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = datotalag)
#DIDRATNOPOP=lmrob(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = datotalag)
DIDRATCOTTONNOPOP <- update(DIDRATNOPOP, COTTONRAT ~ .)
DIDRATTOBACCONOPOP <- update(DIDRATNOPOP, TOBACCORAT ~ .)


# Heterogeneity analysis in the south
DIDRATSOUTHNOPOP=lm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = datotalag[datotalag$CSA==1,])
DIDRATCOTTONSOUTHNOPOP <- update(DIDRATSOUTHNOPOP, COTTONRAT ~ .)
DIDRATTOBACCOSOUTHNOPOP <- update(DIDRATSOUTHNOPOP, TOBACCORAT ~.)

#--------

# Creating the linear models with population
#DIDRAT=lmrob(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = datotalag)
DIDRAT=lm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = datotalag)
DIDRATCOTTON=update(DIDRAT,COTTONRAT ~ .)
DIDRATTOBACCO=update(DIDRAT,TOBACCORAT ~ .)

# Heterogeneity analysis in the south
#DIDRATSOUTH=lmrob(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = datotalag[datotalag$CSA==1,])
DIDRATSOUTH=lm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = datotalag[datotalag$CSA==1,])
DIDRATCOTTONSOUTH=update(DIDRATSOUTH, COTTONRAT~.)
DIDRATTOBACCOSOUTH=update(DIDRATSOUTH, TOBACCORAT~.)


#-----

# panel data

paneldatotal=pdata.frame(datotalag, index = c("GISJOIN","YEAR"))
didrand=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal, model = "random")
didfix=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal, model = "within")
phtest(didfix,didrand)
pFtest(didfix,DIDRATNOPOP)

# now creating linear models with fixed effects
DIDFIXNOPOP=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal, model = "within")
DIDFIXCOTTONNOPOP=plm(COTTONRAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal, model = "within")
DIDFIXTOBACCONOPOP=plm(TOBACCORAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal, model = "within")

# Heterogeneity analysis in the south
DIDFIXSOUTHNOPOP=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal[datotalag$CSA==1,], model = "within")
DIDFIXCOTTONSOUTHNOPOP=plm(COTTONRAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal[datotalag$CSA==1,], model = "within")
DIDFIXTOBACCOSOUTHNOPOP=plm(TOBACCORAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO, data = paneldatotal[datotalag$CSA==1,], model = "within")


#with population

DIDFIX=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal, model = "within")
DIDFIXCOTTON=plm(COTTONRAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal, model = "within")
DIDFIXTOBACCO=plm(COTTONRAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal, model = "within")

# Heterogeneity analysis in the south
DIDFIXSOUTH=plm(LAGOUT3~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal[datotalag$CSA==1,], model = "within")
DIDFIXCOTTONSOUTH=plm(COTTONRAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal[datotalag$CSA==1,], model = "within")
DIDFIXTOBACCOSOUTH=plm(TOBACCORAT~SLAVES+AMEN+DIDRAT+LMACHINE+LLIVESTOCK+LFARMS+FORATIO+POPGROWTH, data = paneldatotal[datotalag$CSA==1,], model = "within")



#Testing for heteroskedasticity in the models

models <- mget(ls(pattern = "DID"))
heterotests <- lapply(models, bptest)

# Making tables for LaTeX with stargazer package
stargazer(DIDRATNOPOP,DIDFIXNOPOP,dep.var.labels=c("Agregate agricultural output (logs)"),title="Total agricultural production" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATCOTTONNOPOP,DIDFIXCOTTONNOPOP,dep.var.labels=c("Cotton ratio"),title="Cotton production per total agricultural production" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATTOBACCONOPOP,DIDFIXTOBACCONOPOP,dep.var.labels=c("Tobacco ratio"),title="Tobacco production per total agricultural production" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery","Livestock","Number of farms", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))

#Making tables with population
stargazer(DIDRAT,DIDFIX,dep.var.labels=c("Agregate agricultural output (logs)"),title="Total agricultural production including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATCOTTON,DIDFIXCOTTON,dep.var.labels=c("Cotton ratio"),title="Cotton production per total agricultural production including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATTOBACCO,DIDFIXTOBACCO,dep.var.labels=c("Tobacco ratio"),title="Tobacco production per total agricultural production including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))


#Stargazer heterogeneity and south
stargazer(DIDRATSOUTHNOPOP,DIDFIXSOUTHNOPOP,dep.var.labels=c("Agregate agricultural output (logs)"),title="Total agricultural production in confederate states" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATCOTTONSOUTHNOPOP,DIDFIXCOTTONSOUTHNOPOP,dep.var.labels=c("Cotton ratio"),title="Cotton production per total agricultural production in confederate states" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATTOBACCOSOUTHNOPOP,DIDFIXTOBACCOSOUTHNOPOP,dep.var.labels=c("Tobacco ratio"),title="Tobacco production per total agricultural production in confederate states" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))


#Stargazer heterogeneity, south and population
stargazer(DIDRATSOUTH,DIDFIXSOUTH,dep.var.labels=c("Agregate agricultural output (logs)"),title="Total agricultural production in confederate states including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATCOTTONSOUTH,DIDFIXCOTTONSOUTH,dep.var.labels=c("Cotton ratio"),title="Cotton production per total agricultural production in confederate states including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestoc (logs)k","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
stargazer(DIDRATTOBACCOSOUTH,DIDFIXTOBACCOSOUTH,dep.var.labels=c("Tobacco ratio"),title="Tobacco production per total agricultural production in confederate states including population growth" , covariate.labels=c("Slave ratio","Before the 13th Amendment","Diff-in-diff estimator","Implements and machinery (logs)","Livestock (logs)","Number of farms (logs)", "Foreign people ratio", "Population growth rate 1860-1870"),omit.stat=c("LL","ser","aic","bic"),no.space=TRUE,report = ('vc*p'))
