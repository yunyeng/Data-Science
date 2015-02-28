# Work with Data_set:advertisers_2013–you want to create a chart where you show top 10 spenders in 
# each media category (see graph here Home_work_week8). Send me file with your code by Friday 
# late night! File must be Sublime text.

advertise <- read.csv("advertisers_2013.csv")
newspaper <- advertise[,c("ADVERTISER","NEWSPAPER")]
magazine <- advertise[,c("ADVERTISER","MAGAZINE")]
tv <- advertise[,c("ADVERTISER","TV")]
outdoor <- advertise[,c("ADVERTISER","OUTDOOR")]

newspaper <- newspaper[order(-newspaper$NEWSPAPER), , drop = FALSE]
magazine <- magazine[order(-magazine$MAGAZINE), , drop = FALSE]
tv <- tv[order(-tv$TV), , drop = FALSE]
outdoor <- outdoor[order(-outdoor$OUTDOOR), , drop = FALSE]

newspaper <- newspaper[1:10,]
magazine <- magazine[1:10,]
tv <- tv[1:10,]
outdoor <- outdoor[1:10,]

par(mfrow=c(2,2))
dotchart(newspaper$NEWSPAPER, newspaper$ADVERTISER, main="NEWSPAPER")
dotchart(magazine$MAGAZINE, magazine$ADVERTISER, main="MAGAZINE")
dotchart(tv$TV, tv$ADVERTISER, main="TV")
dotchart(outdoor$OUTDOOR, outdoor$ADVERTISER, main="OUTDOOR")
