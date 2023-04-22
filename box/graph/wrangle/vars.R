# box/graph/wrangle/vars.R

# reset the path
options(box.path = getwd())

# use clean names module
box::use(box/graph/wrangle/clean/cols)

# wrangle packages/functions
box::use(dplyr[mutate, filter],
  stringr[str_ext = str_extract])

#' @export
scatter = function() {
  clean_cols <- cols$snakes()
  plot_vars <- clean_cols |>
    mutate(
      species = str_ext(species, "([[:alpha:]]+)"),
      species = factor(species),
      island = factor(island),
      sex = factor(sex)
    ) |>
    # remove missing sex
    filter(!is.na(sex))
  return(plot_vars)
}