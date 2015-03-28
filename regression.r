reg <- read.csv("data_for_regression.csv")
df[] <- lapply(reg, function(x){
   x2 <- gsub(pattern = "$", replacement = "", x = x, fixed = TRUE)
   x3 <- gsub(pattern = ",", replacement = "", x = x2, fixed = TRUE)
   as.numeric(x3)
   }
)

fit <- lm(Revenue ~ Day, data=df)

fitted(fit)
residuals(fit)
summary(fit)

plot(df$Day, df$Revenue, xlab="Days", ylab="Revenue ($ Million)")
abline(fit)

predict(fit)
predict(fit,newdata=df, interval='prediction')
