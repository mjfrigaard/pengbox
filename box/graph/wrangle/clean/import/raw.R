# box/graph/wrangle/clean/import/raw.R
box::use(
  readr[rcsv = read_csv, cols]
)
#' @export
csv <- function() {
  raw_csv_url <- "https://bit.ly/3SQJ6E3"
  # use alias for read_csv()
  rcsv(raw_csv_url, col_types = cols())
}