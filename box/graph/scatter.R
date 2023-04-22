# box/graph/scatter.R

# reset the path
options(box.path = getwd())

# import plot vars module
box::use(box/graph/wrangle/vars)

# import ggplot2
box::use(
  ggplot2 = ggplot2[ggplot, aes, geom_point, 
                    facet_wrap, labs, theme_minimal]
)

#' @export
ggp2 <- function() {
  scatter_vars <- vars$scatter()
  # plot prepped data
  ggp2_plot <- ggplot2$ggplot(data = scatter_vars, 
    ggplot2$aes(
      x = flipper_length_mm,
      y = bill_length_mm,
      group = island
    )
  ) +
    ggplot2$geom_point(
      ggplot2$aes(color = species)
    ) +
    ggplot2$facet_wrap(. ~ island) +
    ggplot2$labs(
      x = "Flipper Length (mm)", 
      y = "Bill length (mm)", 
      color = "Species",
      group = "Island",
      title = "Flipper vs. Bill Length", 
      subtitle = "Palmer Penguins"
    ) +
    ggplot2$theme_minimal()
  ggp2_plot
}