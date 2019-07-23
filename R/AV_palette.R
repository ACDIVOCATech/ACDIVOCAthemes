## AV palettes

AV_palette <- list(
  ## AV Regular
  Regular = c(
    "#F6E0D2",  ## white paper
    "#DFA398",  ##
    "#9C6755",  ##
    "#659794",  ## AV turqoise
    "#EA967C",  ## AV lightorange
    "#F5C98E",  ## AV beige
    "#D65B5A",  ##
    "#586085"   ##
  ),
  ## AV Grey
  Grey = c(
    "#EFCBCB",  ##
    "#B47880",  ##
    "#824B51",  ##
    "#635761",  ##
    "#AD616C",  ##
    "#D1A391",  ##
    "#7D3450",  ##
    "#2B2D42"   ##
  ),
  Sequential_Blues = c(
    "#f7fbff",  ##
    "#deebf7",  ##
    "#c6dbef",  ##
    "#9ecae1",  ##
    "#6baed6",  ##
    "#4292c6",  ##
    "#2171b5",  ##
    "#08519c",  ##
    "#08306b"   ##
  ),
  Sequential_Grey = c(
    "#EFCBCB",  ##
    "#B47880",  ##
    "#824B51",  ##
    "#635761",  ##
    "#AD616C",  ##
    "#D1A391",  ##
    "#7D3450",  ##
    "#2B2D42"   ##
  )
)

#' @title AV palette
#' @description AV palette
#' @details Color set from Matt Shanks & `@ChevyRay``
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette, Default: "Day"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname AV_pal
#' @export
#' @importFrom scales manual_pal

AV_pal <- function(palette, n, type = c("discrete", "continuous"),
                      reverse = FALSE){
  AV <- AV_palette[[palette]]

  if (reverse == TRUE) {
    AV <- rev(AV)
  }

  if (missing(n)) {
    n <- length(AV)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(AV)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(AV)}!"))
  }

  AV <- switch(type,
                  continuous = grDevices::colorRampPalette(AV)(n),
                  discrete = AV[1:n])

  AV <- scales::manual_pal(AV)

  return(AV)
}

#' @title scale_color_AV
#' @rdname AV_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_AV <- function(palette = "Day", n, type = "discrete",
                              reverse = FALSE, ...){

  if (type == "discrete") {
    ggplot2::discrete_scale("color", "AV",
                            AV_pal(palette = palette, n = n, type = type,
                                      reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = AV_pal(palette = palette, n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_AV
#' @rdname AV_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_AV <- scale_color_AV

#' @title scale_fill_AV
#' @rdname AV_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_AV <- function(palette = "Day", n, type = "discrete",
                             reverse = FALSE, ...){
  if (type == "discrete") {
    ggplot2::discrete_scale("fill", "AV",
                            AV_pal(palette = palette, n = n, type = type,
                                      reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = AV_pal(palette = palette, n = n, type = type,
                                                     reverse = reverse)(8))
  }
}
