#' create a histogram with more than one variables
#' @export mhist
#' @param distribution a dataframe with variables as columns
#' @param xlab string of the x-axis
#' @param ylab string name of the y-axis
#' @param legend string name of legend
#' @param alpha transparency value


mhist <- function(distributions,
                  xlab = "X",
                  ylab = "Frequency",
                  legend = "Factors",
                  title = "",
                  alpha = 0.5 ) {
        if ( class(distributions) != "data.frame") {
                stop("distributions must be a named dataframe")
        }
        theme_set(theme_classic())
        dist.m <- melt(distributions)
        g <- ggplot(dist.m, aes(as.numeric(value),
                             fill = as.factor(variable)))
        g <- g + geom_density(alpha = alpha)
        g <- g + labs(x = xlab,
                      y = ylab,
                      title = title,
                      fill = legend)
        g
}
