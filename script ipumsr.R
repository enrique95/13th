install.packages("ipumsr")
install.packages("stargazer")
install.packages("readr")
install.packages("sf")
install.packages("ggpubr")
install.packages("ggplot2")
install.packages("dplyr")
library(stargazer)
library(ipumsr)
library(sf)
library(dplyr)
library(ggplot2)
library(ggpubr)


#slave population
#----------------

nhgis_csv_file60pop <- "E:/_TFG/r/TFG2ipumsr/nhgis0021_csv/nhgis0021_ds14_1860_county.csv"
nhgis_shp_file60pop <- "E:/_TFG/r/TFG2ipumsr/nhgis0021_shape/US_county_1860_conflated.shp"
nhgis60pop=read_nhgis_sf(data_file = nhgis_csv_file60pop,shape_file = nhgis_shp_file60pop)
nhgis60pop <- nhgis60pop %>%   mutate(SLAVES = 1 -(AH7001 / AG3001))
slavesplot=ggplot(data = nhgis60pop, aes(fill = SLAVES)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
#saving the image (run 3 lines together)
png("slaves.png", units="in", width=10, height=6, res=300)
slavesplot
dev.off()

#agricultural ratio 1860
#---------------------------------------------
nhgis_csv_file60agr <- "E:/_TFG/r/TFG2ipumsr/nhgis0024_csv/nhgis0024_ds13_1860_county.csv"
nhgis_shp_file60agr <- "E:/_TFG/r/TFG2ipumsr/nhgis0024_shape/US_county_1860_conflated.shp"
nhgis60agr=read_nhgis_sf(data_file = nhgis_csv_file60agr,shape_file = nhgis_shp_file60agr)

#creating the ratios
nhgis60agr <- nhgis60agr %>%   mutate(WHEATRAT = AG1001/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(RYERAT = AG1002/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(CORNRAT = AG1003/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(OATRAT = AG1004/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(RICERAT = AG1005/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(TOBACCORAT = AG1006/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(COTTONRAT = AG1007/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(WOOLRAT = AG1008/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(PEARAT = AG1009/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(ITPOTATORAT = AG1010/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(SWPOTATORAT = AG1011/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(BARLEYRAT = AG1012/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(BUCKWHEATRAT = AG1013/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(WINERAT = AG1014/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(BUTTERAT = AG1015/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(CHEESERAT = AG1016/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(HAYRAT = AG1017/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(CLOVERRAT = AG1018/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(GRASSRAT = AG1019/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(HOPSRAT = AG1020/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(DEWHEMPRAT = AG1021/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(WATERHEMPRAT = AG1022/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(OTHERHEMPRAT = AG1023/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(FLAXRAT = AG1024/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(FLAXSEEDRAT = AG1025/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(SILKRAT = AG1026/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(MAPLESUGARRAT = AG1027/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(CANESUGARRAT = AG1028/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(MAPLEMOLARAT = AG1029/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(CANEMOLARAT = AG1030/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(SORGHUMMOLARAT = AG1031/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(BEESWAXRAT = AG1032/AGQ001)
nhgis60agr <- nhgis60agr %>%   mutate(HONEYRAT = AG1033/AGQ001)
#Plotting agr ratio
ggplot(data = nhgis60agr, aes(fill = COTTONRAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs(caption = "Source: Prepared by the author using NHGIS data" )
ggsave("cottonrat.png", dpi = 1200)
ggplot(data = nhgis60agr, aes(fill = TOBACCORAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
ggsave("tobaccorat.png", dpi = 1200)
ggplot(data = nhgis60agr, aes(fill = AGQ001)) +geom_sf() + scale_fill_continuous(type = "viridis") + labs(caption = "Source: Prepared by the author using NHGIS data" )
ggsave("agout3.png", dpi = 1200)
caneratplot=ggplot(data = nhgis60agr, aes(fill = CANERAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
riceratplot=ggplot(data = nhgis60agr, aes(fill = RICERAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )

#Other plotting
cottonratplot=ggplot(data = nhgis60agr, aes(fill = COTTONRAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs(caption = "Source: Prepared by the author using NHGIS data" )
png("cottonrat.png", units="in", width=10, height=6, res=300)
cottonratplot
dev.off()

tobaccoratplot=ggplot(data = nhgis60agr, aes(fill = TOBACCORAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
png("tobaccorat.png", units="in", width=10, height=6, res=300)
tobaccoratplot
dev.off()

agout3plot=ggplot(data = nhgis60agr, aes(fill = AGQ001)) +geom_sf() + scale_fill_continuous(type = "viridis") + labs(caption = "Source: Prepared by the author using NHGIS data" )
png("agout3.png", units="in", width=10, height=6, res=300)
agout3plot
dev.off()


#southern ratios
cottonratplotsouth=ggplot(data = nhgis60agr[nhgis60agr$STATENAM %in% c("South Carolina","Mississippi", "Florida","Alabama","Georgia", "Louisiana", "Texas","Virginia","Arkansas","Tennessee","North Carolina", "Missouri", "Kentucky"),], aes(fill = COTTONRAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs(caption = "Source: Prepared by the author using NHGIS data" )
tobaccoratplotsouth=ggplot(data = nhgis60agr[nhgis60agr$STATENAM %in% c("South Carolina","Mississippi", "Florida","Alabama","Georgia", "Louisiana", "Texas","Virginia","Arkansas","Tennessee","North Carolina", "Missouri", "Kentucky"),], aes(fill = TOBACCORAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
caneratplotsouth=ggplot(data = nhgis60agr, aes(fill = CANERAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
riceratplotsouth=ggplot(data = nhgis60agr, aes(fill = RICERAT)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )


#-------------------------------
#population change

nhgis_csv_file60popu <- "nhgis0025_csv/nhgis0025_ds14_1860_county.csv"
nhgis_shp_file60popu <- "nhgis0025_shape/US_county_1860_conflated.shp"
nhgis_csv_file70popu <- "nhgis0025_csv/nhgis0025_ds17_1870_county.csv"
nhgis_shp_file70popu <- "nhgis0025_shape/US_county_1870_conflated.shp"


nhgis60popucsv=read_nhgis(data_file = nhgis_csv_file60popu)
nhgis70popucsv=read_nhgis(data_file = nhgis_csv_file70popu)
nhgis60popucsv<- nhgis60popucsv %>% mutate(malepop60 = AHV004 + AHV005+AHV006+AHV007+AHV008+AHV009+AHV010+AHV011+AHV012+AHV013+AHV014+AHV015)
nhgis60popucsv=nhgis60popucsv[,c(1:7,38)]
nhgispopucsv=merge(nhgis60popucsv,nhgis70popucsv, by="GISJOIN")
nhgispopucsv=nhgispopucsv[c(1:933,935:nrow(nhgispopucsv)),]
nhgispopucsv$POPGROWTH=log(nhgispopucsv$AKH001)-log(nhgispopucsv$malepop60)
write.csv(nhgispopucsv,"nhgispopucsv.csv")
nhgis_csv_filepopu <- "nhgispopucsv.csv"
nhgispopu=read_nhgis_sf(data_file = nhgis_csv_filepopu,shape_file = nhgis_shp_file60popu)

#Plotting pop growth

popgrowthplot=ggplot(data = nhgispopu, aes(fill = POPGROWTH)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
png("popgrowth.png", units="in", width=10, height=6, res=300)
popgrowthplot
dev.off()

ggplot(data = nhgispopu, aes(fill = POPGROWTH)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )
ggsave("popgrowth.png", dpi = 1200)

#Plotting comparisons
cottoncomp <- ggarrange(cottonratplot,slavesplot,ncol = 2, nrow = 1)

png("cottoncomp.png", units="in", width=20, height=6, res=600)
cottoncomp
dev.off()

tobaccocomp=ggarrange(tobaccoratplot,slavesplot,ncol = 2, nrow = 1)

png("tobaccocomp.png", units="in", width=20, height=6, res=600)
tobaccocomp
dev.off()

ratcomp=ggarrange(cottoncomp,tobaccocomp, ncol = 1, nrow = 2)


png("ratcomp.png", units="in", width=20, height=12, res=600)
ratcomp
dev.off()

cottonpopcomp<- ggarrange(cottonratplot,popgrowthplot,ncol = 2, nrow = 1)

png("cottonpopcomp.png", units="in", width=20, height=6, res=600)
cottonpopcomp
dev.off()

tobaccopopcomp<- ggarrange(tobaccoratplot,popgrowthplot,ncol = 2, nrow = 1)

png("tobaccopopcomp.png", units="in", width=20, height=6, res=600)
tobaccopopcomp
dev.off()

agoutpopcomp=ggarrange(agout3plot,popgrowthplot, ncol=2, nrow = 1)

png("agoutpopcomp.png", units="in", width=20, height=6, res=600)
agoutpopcomp
dev.off()

popgrowthsouthplot=ggplot(data = nhgispopu[nhgispopu$STATENAM %in% c("South Carolina","Mississippi", "Florida","Alabama","Georgia", "Louisiana", "Texas","Virginia","Arkansas","Tennessee","North Carolina", "Missouri", "Kentucky"),], aes(fill = POPGROWTH)) +geom_sf() + scale_fill_continuous(type = "viridis", labels = scales::percent) + labs( caption = "Source: Prepared by the author using NHGIS data" )

tobaccopopsouthcomp=ggarrange(tobaccoratplotsouth,popgrowthsouthplot, ncol = 2, nrow = 1)

png("tobaccopopsouthcomp.png", units="in", width=20, height=6, res=600)
tobaccopopsouthcomp
dev.off()