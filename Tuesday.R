install.packages("RgoogleMaps")
library(RgoogleMaps)
MyMap<-GetMap(center=c(lat=40.7,long=-74),zoom=11)
PlotOnStaticMap(MyMap)

PlotOnStaticMap(MyMap)
PlotOnStaticMap(MyMap, lat=c(40.702,40.711,40718),lon=c(-74.01,74.02,-73.98),lwd=1.5,col=c('blue'),add=TRUE)
myDf<-read.csv("/scratch/scholar/t/train23/2016-01.csv")
PlotOnStaticMap(MyMap,destfile="trythis.png",lat=head(myDf$pickup_latitude,n=300),lon=head(myDf$pickup_longitude,n=300),lwd=1.5,col=c('blue'),add=TRUE)
PlotOnStaticMap(MyMap,lat=head(myDf$pickup_latitude,n=300),lon=head(myDf$pickup_longitude,n=300),lwd=1.5,col=c('blue','green'),add=TRUE)
v<-rep('red', times=300)
v[head(myDf$pickup_latitude,n=300)>40.8]<-'blue'
head(v)

PlotOnStaticMap(MyMap,lat=head(myDf$pickup_latitude,n=300),lon=head(myDf$pickup_longitude,n=300),lwd=1.5,col=v,add=TRUE)
