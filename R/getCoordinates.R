#' @title Get geographical coordinates of a climate data object
#' @description Returns the coordinates of a climate data object, either stations or field
#' @param obj Any object extending the station or field classes
#' @return A list with x and y components
#' @author J. Bedia \email{joaquin.bedia@@gmail.com}
#' @export

getCoordinates <- function(obj) {
      if ("station" %in% attr(obj$Data, "dimensions")) {
            x <- obj$xyCoords[ ,1]
            y <- obj$xyCoords[ ,2]
      } else {
            x <- obj$xyCoords$x
            y <- obj$xyCoords$y
      }
      return(list("x" = x, "y" = y))
}
# End