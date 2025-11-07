library(data.table)
library(ggplot2)
library(rms)

coffee <- fread("../data/coffee_new.csv")
dd <- datadist(coffee)
options(datadist = "dd")

p <- ggplot(
  coffee,
  aes(x = level, y = time_sec)
) + geom_point(aes(shape = warnings, col = who)) +
  geom_smooth() + theme_bw()

print(p)

m <- ols(
  time_sec ~ rcs(level, 3) + rcs(water_temp, 3) + who, data = coffee
)

print(summary(m))
