#' gsplot text
#'
#' Adding text inside of the plotting area.  See \code{\link[graphics]{text}} for more details.
#' 
#' @details Additional graphical parameter inputs:
#' \itemize{
#'  \item{\code{x}} {numeric vector specifying x-coordinate(s) of text position(s)} 
#'  \item{\code{y}} {numeric vector specifying y-coordinate(s) of text position(s)}
#'  \item{\code{labels}} {character vector of text for the plot}
#' }
#' 
#' @param object gsplot object
#' @param \dots Further graphical parameters may also be supplied as arguments. See 'Details'.
#'  
#' @export
#' @examples
#' gs <- gsplot()
#' gsNew <- points(gs, y=1, x=2, col="blue", pch=18, legend.name="Points", xlab="Stuff")
#' gsNew <- lines(gsNew, c(3,4,3), c(2,4,6), legend.name="Lines", ylab="Data!")
#' gsNew <- text(gsNew, x=3.5, y=1.5, labels="Test") 
#' gsNew <- abline(gsNew, b=1, a=0, legend.name="1:1") 
#' gsNew <- legend(gsNew, location="topleft",title="Awesome!")
#' gsNew <- title(gsNew, main="Great Graph")
#' gsNew
#' 
#' gs <- gsplot() %>%
#'   points( y=c(3,1,2), x=1:3, xlim=c(0,NA),ylim=c(0,NA),
#'         col="blue", pch=18, legend.name="Points", xlab="Index") %>%
#'   lines(c(3,4,3), c(2,4,6), legend.name="Lines", ylab="Data") %>%
#'   abline(b=1, a=0, legend.name="1:1") %>%
#'   legend(location="topleft",title="Awesome!") %>%
#'   grid() %>%
#'   error_bar(x=1:3, y=c(3,1,2), y.high=c(0.5,0.25,1), y.low=0.1) %>%
#'   error_bar(x=1:3, y=c(3,1,2), x.low=.2, x.high=.2, col="red",lwd=3) %>%
#'   arrows(x0=c(0.75, 1.75), y0=c(2,2.5), x1=c(1,2), y1=c(2.8,1.4), lwd=2) %>%
#'   text(x=c(0.75, 1.75), y=c(1.75, 2.8),labels=c("Weird data", "Other Data")) %>%
#'   title("Graphing Fun")
#' gs
#' 
text <- function(object, ...) {
  override("graphics","text", object, ...)
}


text.gsplot <- function(object, ..., legend.name=NULL, side=c(1,2)){
  set_window_args(object, fun.name='text', ..., legend.name=legend.name, side=side, def.funs=graphics::text.default)
}