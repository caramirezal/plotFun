
linRegression <- function(x,y){
        plot(x,y,pch=20,col=alpha("steelblue",0.5))
        fit <- lm(y~x)
        abline(fit,lwd="2", col=alpha("green",0.8))
}
