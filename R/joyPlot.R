library(ggjoy)

# the same figure with colors, and using the ggplot2 density stat
ggplot(diamonds, aes(x = price, y = cut, fill = cut, height = ..density..)) +
        geom_joy(scale = 4, stat = "density") +
        scale_y_discrete(expand = c(0.01, 0)) +
        scale_x_continuous(expand = c(0.01, 0)) +
        scale_fill_brewer(palette = 4) +
        theme_joy() + theme(legend.position = "none")
