advertise <- read.csv("advertisers_2013.csv")
advertise <- transform(advertise, MAGAZINE = (MAGAZINE / MEASURED.MEDIA) * 100)
advertise <- transform(advertise, NEWSPAPER = (NEWSPAPER / MEASURED.MEDIA) * 100)
advertise <- transform(advertise, OUTDOOR = (OUTDOOR / MEASURED.MEDIA) * 100)
advertise <- transform(advertise, TV = (TV / MEASURED.MEDIA) * 100)
advertise <- transform(advertise, RADIO = (RADIO / MEASURED.MEDIA) * 100) 
advertise <- transform(advertise, INTERNET.DISPLAY = (INTERNET.DISPLAY / MEASURED.MEDIA) * 100)

newspaper <- advertise[,c("ADVERTISER","NEWSPAPER")]
magazine <- advertise[,c("ADVERTISER","MAGAZINE")]
tv <- advertise[,c("ADVERTISER","TV")]
outdoor <- advertise[,c("ADVERTISER","OUTDOOR")]
radio <- advertise[,c("ADVERTISER","RADIO")]
internet <- advertise[,c("ADVERTISER","INTERNET.DISPLAY")]

newspaper <- newspaper[order(-newspaper$NEWSPAPER), , drop = FALSE]
magazine <- magazine[order(-magazine$MAGAZINE), , drop = FALSE]
tv <- tv[order(-tv$TV), , drop = FALSE]
outdoor <- outdoor[order(-outdoor$OUTDOOR), , drop = FALSE]
radio <- radio[order(-radio$RADIO), , drop = FALSE]
internet <- internet[order(-internet$INTERNET.DISPLAY), , drop=FALSE]

newspaper <- newspaper[1:10,]
magazine <- magazine[1:10,]
tv <- tv[1:10,]
outdoor <- outdoor[1:10,]
radio <- radio[1:10,]
internet <- internet[1:10,]

qplot(MAGAZINE, ADVERTISER, data = magazine, color = ADVERTISER, main="Magazine Percentage of Total Media")
qplot(NEWSPAPER, ADVERTISER, data = newspaper, color = ADVERTISER, main="Newspaper Percentage of Total Media")
qplot(TV, ADVERTISER, data = tv, color = ADVERTISER, main="TV Percentage of Total Media")
qplot(OUTDOOR, ADVERTISER, data = outdoor, color = ADVERTISER, main="Outdoor Percentage of Total Media")
qplot(RADIO, ADVERTISER, data = radio, color = ADVERTISER, main="Radio Percentage of Total Media")
qplot(INTERNET.DISPLAY, ADVERTISER, data = internet, color = ADVERTISER, main="Internet Percentage of Total Media")