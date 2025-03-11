nhl <- read.csv("nhl0607.csv")
nhl

nhl1.lm <- lm(W ~ GF + GA, data = nhl)
summary(nhl1.lm)

# Adj_r^2 = 0.8745

nhl2.lm <- lm(W ~ GF, data = nhl)
summary(nhl2.lm)

# R^2 = 0.4038, Adj_r^2 = 0.3825

nhl3.lm <- lm(W ~ GA, data = nhl)
summary(nhl3.lm)

#R^2 = 0.6866, Adj_r^2 = 0.6754