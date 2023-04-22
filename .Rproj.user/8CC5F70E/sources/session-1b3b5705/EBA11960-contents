# box/graph/wrangle/clean/cols.R

# reset the path
options(box.path = getwd())

# use import raw module
box::use(box/graph/wrangle/clean/import/raw)

# columns
box::use(
  dplyr[select],
  janitor[fix_cols = clean_names]
)

#' @export
snakes = function() {
  raw <- raw$csv()
  clean_cols <- fix_cols(raw)
  vars <- select(clean_cols, 
    species, 
    island, 
    bill_length_mm = culmen_length_mm,
    bill_depth_mm = culmen_depth_mm,
    flipper_length_mm,
    body_mass_g,
    sex)
  return(vars)
}