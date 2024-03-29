% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AV_palette.R
\name{AV_pal}
\alias{AV_pal}
\alias{scale_color_AV}
\alias{scale_colour_AV}
\alias{scale_fill_AV}
\title{AV palette}
\usage{
AV_pal(palette, n, type = c("discrete", "continuous"), reverse = FALSE)

scale_color_AV(palette = "Day", n, type = "discrete", reverse = FALSE, ...)

scale_colour_AV(palette = "Day", n, type = "discrete", reverse = FALSE, ...)

scale_fill_AV(palette = "Day", n, type = "discrete", reverse = FALSE, ...)
}
\arguments{
\item{palette}{name of palette, Default: "Day"}

\item{n}{number of colors}

\item{type}{discrete or continuous}

\item{reverse}{reverse order, Default: FALSE}

\item{...}{
  Arguments passed on to \code{\link[ggplot2:discrete_scale]{ggplot2::discrete_scale}}
  \describe{
    \item{\code{aesthetics}}{The names of the aesthetics that this scale works with.}
    \item{\code{scale_name}}{The name of the scale that should be used for error messages
associated with this scale.}
    \item{\code{name}}{The name of the scale. Used as the axis or legend title. If
\code{waiver()}, the default, the name of the scale is taken from the first
mapping used for that aesthetic. If \code{NULL}, the legend title will be
omitted.}
    \item{\code{breaks}}{One of:
\itemize{
\item \code{NULL} for no breaks
\item \code{waiver()} for the default breaks (the scale limits)
\item A character vector of breaks
\item A function that takes the limits as input and returns breaks
as output. Also accepts rlang \link[rlang:as_function]{lambda} function
notation.
}}
    \item{\code{labels}}{One of:
\itemize{
\item \code{NULL} for no labels
\item \code{waiver()} for the default labels computed by the
transformation object
\item A character vector giving labels (must be same length as \code{breaks})
\item A function that takes the breaks as input and returns labels
as output. Also accepts rlang \link[rlang:as_function]{lambda} function
notation.
}}
    \item{\code{limits}}{One of:
\itemize{
\item \code{NULL} to use the default scale values
\item A character vector that defines possible values of the scale and their
order
\item A function that accepts the existing (automatic) values and returns
new ones. Also accepts rlang \link[rlang:as_function]{lambda} function
notation.
}}
    \item{\code{expand}}{For position scales, a vector of range expansion constants used to add some
padding around the data to ensure that they are placed some distance
away from the axes. Use the convenience function \code{\link[ggplot2:expansion]{expansion()}}
to generate the values for the \code{expand} argument. The defaults are to
expand the scale by 5\% on each side for continuous variables, and by
0.6 units on each side for discrete variables.}
    \item{\code{na.translate}}{Unlike continuous scales, discrete scales can easily show
missing values, and do so by default. If you want to remove missing values
from a discrete scale, specify \code{na.translate = FALSE}.}
    \item{\code{na.value}}{If \code{na.translate = TRUE}, what aesthetic value should the
missing values be displayed as? Does not apply to position scales
where \code{NA} is always placed at the far right.}
    \item{\code{drop}}{Should unused factor levels be omitted from the scale?
The default, \code{TRUE}, uses the levels that appear in the data;
\code{FALSE} uses all the levels in the factor.}
    \item{\code{guide}}{A function used to create a guide or its name. See
\code{\link[ggplot2:guides]{guides()}} for more information.}
    \item{\code{position}}{For position scales, The position of the axis.
\code{left} or \code{right} for y axes, \code{top} or \code{bottom} for x axes.}
    \item{\code{super}}{The super class to use for the constructed scale}
  }}
}
\description{
AV palette
}
\details{
Color set from Matt Shanks & `@ChevyRay``
}
\seealso{
\code{\link[scales]{manual_pal}}
 [ggplot2::scale_color_discrete]
 [ggplot2::scale_fill_discrete]
}
