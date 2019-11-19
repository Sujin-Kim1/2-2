library(MASS)
library(gdata)
mydata = read.xls("st_data.xls")
midterm = mydata$Midterm
breaks = seq(0, 100, by = 10)
midterm.cut = cut(midterm, breaks, right = FALSE)
midterm.freq = table(midterm.cut)
# Q1
cbind(midterm.freq)
readline()
# Q2
hist(midterm, right = FALSE)
readline()
# Q3
plot(mydata$Midterm, mydata$Final, xlab = "Midterm Exam", ylab = "Final Exam")
readline()
# Q4
mean(midterm)
var(midterm)
sd(midterm)
readline()