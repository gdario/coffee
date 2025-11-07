library(ggplot2)

coffee <- read.csv("../data/coffee_new.csv")
p <- ggplot(
  coffee,
  aes(x = level, y = time_sec)
) + geom_point(aes(shape = warnings, col = who)) +
  geom_smooth() + theme_bw()

print(p)
