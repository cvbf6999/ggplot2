#' Sequential grey colour scales
#'
#' Based on [gray.colors()]. This is black and white equivalent
#' of [scale_colour_gradient()].
#'
#' @inheritParams scales::grey_pal
#' @inheritParams scale_colour_hue
#' @inheritDotParams discrete_scale
#' @family colour scales
#' @seealso
#' The documentation on [colour aesthetics][aes_colour_fill_alpha].
#' @rdname scale_grey
#' @export
#' @examples
#' p <- ggplot(mtcars, aes(mpg, wt)) + geom_point(aes(colour = factor(cyl)))
#' p + scale_colour_grey()
#' p + scale_colour_grey(end = 0)
#'
#' # You may want to turn off the pale grey background with this scale
#' p + scale_colour_grey() + theme_bw()
#'
#' # Colour of missing values is controlled with na.value:
#' miss <- factor(sample(c(NA, 1:5), nrow(mtcars), replace = TRUE))
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = miss)) +
#'   scale_colour_grey()
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = miss)) +
#'   scale_colour_grey(na.value = "green")
scale_colour_grey <- function(..., start = 0.2, end = 0.8, na.value = "red", aesthetics = "colour") {
  discrete_scale(aesthetics, "grey", grey_pal(start, end),
    na.value = na.value, ...)
}

#' @rdname scale_grey
#' @export
scale_fill_grey <- function(..., start = 0.2, end = 0.8, na.value = "red", aesthetics = "fill") {
  discrete_scale(aesthetics, "grey", grey_pal(start, end),
    na.value = na.value, ...)
}
