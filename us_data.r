us_data <- read.csv("us_data.csv")
male18 <- subset(us_data, key.gender == "male" & key.age == "18-24", select=c(value.visits, value.new_visitors, value.transactions))
male25 <- subset(us_data, key.gender == "male" & key.age == "25-34", select=c(value.visits, value.new_visitors, value.transactions))

t.test(male18$value.visits, male25$value.visits)
t.test(male18$value.new_visitors, male25$value.new_visitors)
t.test(male18$value.transactions, male25$value.transactions)

boxplot(male18$value.visits, male25$value.visits)
boxplot(male18$value.new_visitors, male25$value.new_visitors)
boxplot(male18$value.transactions, male25$value.transactions)

plot(male18$value.visits, male25$value.visits)
plot(male18$value.new_visitors, male25$value.new_visitors)
plot(male18$value.transactions, male25$value.transactions)

par(mfrow=c(3,2))
plot(density(male18$value.visits))
plot(density(male25$value.visits))
plot(density(male18$value.new_visitors))
plot(density(male25$value.new_visitors))
plot(density(male18$value.transactions))
plot(density(male25$value.transactions))

femaleTravel <- subset(us_data, key.gender == "female" & vertical_name == "/Travel", select=c(value.visits, value.transactions))
maleTravel <- subset(us_data, key.gender == "male" & vertical_name == "/Travel", select=c(value.visits, value.transactions))

t.test(femaleTravel$value.visits, maleTravel$value.visits)
t.test(femaleTravel$value.transactions, maleTravel$value.transactions)

boxplot(femaleTravel$value.visits, maleTravel$value.visits)
boxplot(femaleTravel$value.transactions, maleTravel$value.transactions)

par(mfrow=c(3,2))
plot(density(femaleTravel$value.visits))
plot(density(maleTravel$value.visits))
plot(density(femaleTravel$value.transactions))
plot(density(maleTravel$value.transactions))
