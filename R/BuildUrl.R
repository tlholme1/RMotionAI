#' Build API URL
#'
#' Internal helper that combines the base Motion API URL with an endpoint path.
#'
#' @param Endpoint Character string specifying the API endpoint path.
#'
#' @return A character string containing the full URL.
#' @keywords internal
.BuildUrl <- function(Endpoint) {
    BaseUrl <- "https://api.usemotion.com/v1"
    Url <- paste0(BaseUrl, Endpoint)
    return(Url)
}
