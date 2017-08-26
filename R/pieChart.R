#' Create a pie chart
#' @description create a pie chart
#' @export pieChart
#' @example
#' pieChart(iris$Species,legend = "Hey",title = "titulo")
#' @usage pieChart(factor,stringTitle,stringLegend)
#' @param factorVector a factor vector
#' @param legend string name for the legend
#' @param title string name for the plot title
#'


pieChart <- function(factorVector,
                     title="",
                     legend="Factors") {
        if ( class(factorVector) != "factor" ){
                stop("factorVector must be a factor vector")
        }
        if ( class(title) != "character" ) {
                stop("title must a string")
        }
        if (class(title) != "character") {
                stop("legend must a string")
        }
        theme_set(theme_classic())
        factor.df <- as.data.frame(table(factorVector))
        colnames(factor.df) <- c("class","freq")
        pie <- ggplot(factor.df, aes(x="", y=freq,fill = factor(class))) +
                geom_bar(width = 1,stat = "identity") +
                theme(axis.line = element_blank(),
                      plot.title = element_text(hjust=0.5)) +
                labs(fill=legend,
                     x=NULL,
                     y=NULL,
                     title=title,
                     caption=" ")
        pie <- pie + coord_polar(theta = "y", start=0)
        pie
}

