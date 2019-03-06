#' Oldest Player Function
#'
#' This function allows you to reveal the oldest NBA player in a particular year.
#' @param
#' @keywords NBA
#' @export
#' @examples
#' oldest_player()
#'
oldest_player = function(x,y) {
  x <- subset(x , Year ==y)
  old = aggregate(x$Age, by = list(x$Year, x$Player), max)
  old = arrange(old, desc(x))
  return(old[1,])
}

