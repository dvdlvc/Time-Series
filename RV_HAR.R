library(highfrequency)
library(xts)
RVSPY <- as.xts(SPYRM$RV5, order.by = SPYRM$DT)
RVSPY <-RVSPY[450:1450]
acf(RVSPY,100)
x <- HARmodel(data = RVSPY , periods = c(1,5,22), RVest = c("rCov"),
              type = "HAR", h = 1, transform = NULL, inputType = "RM")
class(x)
x
summary(x)
plot(x)
predict(x)

