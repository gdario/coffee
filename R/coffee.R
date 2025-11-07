coffee <- read.csv("../data/coffee.csv")
fit <- lm(time_sec ~ level, data = coffee)
with(coffee, scatter.smooth(x = level, y = time_sec))
abline(fit, lty = 2, col = "blue")
