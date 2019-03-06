#' A Points Function
#'
#' This function allows you to reveal the NBA player with most points in a given year.
#' @param
#' @keywords NBA
#' @export
#' @examples
#' max_points()

max_points = function(x, y) {
  x <- subset(x, Year == y)
  pts = aggregate(x$PTS, by = list(x$Year, x$Player), max)
  pts = (arrange(pts, desc(x)))
  return(pts[1,])
}
