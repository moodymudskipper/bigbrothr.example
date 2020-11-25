#' @importFrom bigbrothr bb_stop bb_warning
NULL

#' rectangular area
#'
#' @param x side 1
#' @param y side 2
#' @export
rect_area <- function(x, y) {
  if(!is.numeric(x) || !is.numeric(y))
    bb_stop("sides must be numeric")
  if(x < 0 || y < 0)
    bb_warning("negative sides detected!", label = "neg sides")
  x * y
}


# library(bigbrothr.example)
#
# # we haven't opted in, so the following are not recorded
#
# rect_area(2, 4)
# rect_area(-2, 4)
# rect_area("2", 4)
#
# # now we opt in, this would ideally be in the RProfile
# options(bigbrother.optin = TRUE)
#
# rect_area("3", 4)
# rect_area(-3, 4)
#
# # when we quit, we are prompted
# q()
