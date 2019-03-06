#' Correlation Matrix Function
#'
#' This function allows you to produce a correlation matrix for numerical variables in a particular year.
#' @param
#' @keywords NBA
#' @export
#' @examples
#' corr_matrix()

corr_matrix = function(x,y) {
  x <- subset(x , Year ==y)
  nums <- unlist(lapply(x, is.numeric))
  num = x[,nums]
  cor(num)
}
