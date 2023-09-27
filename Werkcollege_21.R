load("norain.Rdata")
print(norain)
distr <- rbind(1:30,0)
print(length(norain))
print(table(norain)/length(norain))
distr[2,as.numeric(names(table(norain)))] <- table(norain)/length(norain)

plot(distr[1,],distr[2,],type="h")
points(1:30,dpois(1:30,11),col="blue",pch=19)

points(1:30,dnbinom(1:30,144/5,12/17),col="red",pch=19)

table(norain)

hist(norain, breaks = 30, freq = FALSE)

succes <- 1:30
plot(succes, dpois(succes, lambda=5), type = 's', lwd = 2)

poisson <- function(succes){
  succes <- floor(succes)
  dpois(succes, schatter)
}

curve(poisson, add = TRUE, lwd = 2, col = 3)

scatter <- mean(norain)



