#' @title theme_AV
#' @description ACDI/VOCA plotting theme
#' @param title.size PARAM_DESCRIPTION, Default: 18
#' @param text.size PARAM_DESCRIPTION, Default: 14
#' @param subtitle.size PARAM_DESCRIPTION, Default: 12
#' @param axis.title.size PARAM_DESCRIPTION, Default: 14
#' @param axis.text.size PARAM_DESCRIPTION, Default: 12
#' @param legend.title.size PARAM_DESCRIPTION, Default: 10
#' @param legend.text.size PARAM_DESCRIPTION, Default: 9
#' @param title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param subtitle.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param axis.title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param axis.text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.position PARAM_DESCRIPTION, Default: 'bottom'
#' @param ticks PARAM_DESCRIPTION, Default: FALSE
#' @return OUTPUT_DESCRIPTION
#' @rdname theme_AV
#' @export
#' @importFrom ggplot2 element_text
#' @importFrom grid unit

theme_AV <- function(
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom",
  ticks = FALSE
) {

  ## base on theme_minimal
  themeAV <- theme_minimal() +
    ## main theme
    theme(text = ggplot2::element_text(size = text.size, color = text.color),
          plot.title = element_text(face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text( size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#009BA7"),
          panel.background = element_rect(color = NA),
          # panel options
          panel.grid = element_line(color = "#505159"),
          # axis options
          axis.text = element_text(size = axis.text.size, color = axis.text.color),
          axis.title = element_text(size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(size = legend.text.size, color = legend.text.color),
          legend.title = element_text(size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "#505159", linetype = "solid"),
          legend.background = element_rect(color = "#505159", fill = "#505159", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    themeAV <- themeAV + theme(axis.ticks = element_blank(),
                           axis.ticks.x = element_blank(),
                           axis.ticks.y = element_blank())
  } else {
    themeAV <- themeAV + theme(axis.ticks = element_line(size = 0.15, color = "#505159"),
                           axis.ticks.x = element_line(size = 0.15, color = "#505159"),
                           axis.ticks.y = element_line(size = 0.15, color = "#505159"),
                           axis.ticks.length = grid::unit(4, "pt"))
  }

  return(themeAV)

  ## add ACDIV/VOCA logo
}


#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param title.size PARAM_DESCRIPTION, Default: 18
#' @param text.size PARAM_DESCRIPTION, Default: 14
#' @param subtitle.size PARAM_DESCRIPTION, Default: 12
#' @param axis.title.size PARAM_DESCRIPTION, Default: 14
#' @param axis.text.size PARAM_DESCRIPTION, Default: 12
#' @param legend.title.size PARAM_DESCRIPTION, Default: 10
#' @param legend.text.size PARAM_DESCRIPTION, Default: 9
#' @param title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param subtitle.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param axis.title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param axis.text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.title.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.text.color PARAM_DESCRIPTION, Default: '#F9FEFF'
#' @param legend.position PARAM_DESCRIPTION, Default: 'bottom'
#' @param ticks PARAM_DESCRIPTION, Default: FALSE
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[ggplot2]{margin}}
#'  \code{\link[grid]{unit}}
#' @rdname theme_AVgray
#' @export
#' @importFrom ggplot2 element_text
#' @importFrom grid unit

theme_AVgray <- function(
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom",
  ticks = FALSE
) {

  ## base on theme_minimal
  theme_AV_gray <- theme_gray() +
    ## main theme
    theme(text = ggplot2::element_text(size = text.size, color = text.color),
          plot.title = element_text(face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#505159"),
          panel.background = element_rect(color = NA),
          # panel options
          panel.grid = element_line(color = "black"),
          # axis options
          axis.text = element_text(size = axis.text.size, color = axis.text.color),
          axis.title = element_text(size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(size = legend.text.size, color = legend.text.color),
          legend.title = element_text(size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid"),
          legend.background = element_rect(color = "#505159", fill = "#505159", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    theme_AV_gray <- theme_AV_gray + theme(axis.ticks = element_blank(),
                               axis.ticks.x = element_blank(),
                               axis.ticks.y = element_blank())
  } else {
    theme_AV_gray <- theme_AV_gray + theme(axis.ticks = element_line(size = 0.15, color = "black"),
                               axis.ticks.x = element_line(size = 0.15, color = "black"),
                               axis.ticks.y = element_line(size = 0.15, color = "black"),
                               axis.ticks.length = grid::unit(4, "pt"))
  }

  return(theme_AV_gray)

  ## add ACDIV/VOCA logo
}
