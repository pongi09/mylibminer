#' R Library Summary
#' Provides a brief summary of the package libraries on your machine.
#' Tamas!
#'
#' @return A data.frame containing the count of packages in each othe libraries
#' @export
#'
#' @examples
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
