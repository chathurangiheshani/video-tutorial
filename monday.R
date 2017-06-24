3+10
2+2
library (curl)
url<-"https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-06.csv"
curl_download(url,"/scratch/scholar/t/train23/2016-06.CSV",quiet=FALSE)

mymonths<-sprintf("%02d",1:6)
as(as.Date("2016-01"),as.Date("2016-01"),by="month")
myurls<-paste("https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-", mymonths, ".csv", sep="")
myfilenames<-paste("/scratch/scholar/t/train23/2016-",mymonths, ".csv", sep="")
myfilenames

mapply(function(x,y)curl_download(x, y, quiet= FALSE),myurls, myfilenames)

myDf<-read.csv("/scratch/scholar/t/train23/2016-01.csv")
head(myDf$passenger_count)
table(myDf$passenger_count)

# end of taxi cab now###

# start the billboard example##

curl_download("http://www.billboard.com/charts/hot-100/2017-05-27", "2017-05-27", quiet=FALSE)
mydates<-seq(as.Date("1958-08-09"), as.Date("2017-05-27"), by= "week")
install.packages("XML")
library(XML)
mydoc<-htmlParse("2017-05-27")

# start of the file * anything goes here its ok
mysongs<-xpathApply(mydoc,"//*/div[@class='chart-row__title']/h2[@class='chart-row__song']", xmlValue)

mysongs

myartists<-xpathApply(mydoc,"//*/div[@class='chart-row__title']/h3[@class='chart-row__artist']|//*/div[@class='chart-row__title']/a[@class='chart-row__artist']", xmlValue)
myartists
myartists<-sub("^\\s+", "", myartists)
myartists<-sub("
tail(mydates)
mybilboardurls<-paste("http://www.billboard.com/charts/hot-100/", mydates, sep="")
mybilboardurls<-paste("http://www.billboard.com/charts/hot-100/", mydates, sep="")
head(mybilboardurls)
class(head(mybilboardurls))
class(head(mydates))^\\s+$", "", myartists)
myartists
head(mydates)

mapply(function(x,y)curl_download(x, y, quiet= FALSE),mybilboardurls, as.character(mydates))
2*2

sapply( "2017-05-27", function(x) xpathApply(htmlParse(x),"//*/div[@class='chart-row__title']/h2[@class='chart-row__song']", xmlValue),simplify=FALSE)
class(sapply( "2017-05-27", function(x) xpathApply(htmlParse(x),"//*/div[@class='chart-row__title']/h2[@class='chart-row__song']", xmlValue),simplify=FALSE))
sapply( c("2017-05-13","2017-05-20","2017-05-27"), function(x) xpathApply(htmlParse(x),"//*/div[@class='chart-row__title']/h2[@class='chart-row__song']", xmlValue),simplify=FALSE)
mybigsongslist<-sapply(tail(as.character(mydates)), function(x) xpathApply(htmlParse(x),"//*/div[@class='chart-row__title']/h2[@class='chart-row__song']", xmlValue),simplify=FALSE)
length(mybigsongslist)
length(mybigsongslist[[3]])
