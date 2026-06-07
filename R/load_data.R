#' Load plastic waste data
#'
#' Loads the plastic waste dataset directly
#' from the package
#'
#' @return A data frame with columns that include country, year, parent_company,
#'   plastic type totals (hdpe, ldpe, pet, pp, ps, pvc), grand_total,
#'   num_events, volunteer, and other country level metrics.
#' @export
#' @importFrom arrow read_parquet
#' @examples
#' df <- load_data()
#' head(df)
load_data <- function() {
  path <- system.file("population_plastics.parquet", package = "Plarrr")
  arrow::read_parquet(path)
}

