#' Parse Motion API response
#'
#' Internal helper to convert an HTTP response to a `data.table` or list.
#'
#' @param Response httr response object.
#'
#' @return Parsed content as a `data.table` or other R object.
#' @family utilities
#' @keywords internal
.HandleResponse <- function(Response) {
    Content <- content(Response, as = "parsed", type = "application/json")
    if (is.list(Content) && is.null(names(Content))) {
        Data <- rbindlist(Content, fill = TRUE)
        return(Data)
    }
    if (is.list(Content)) {
        Data <- as.data.table(Content)
        return(Data)
    }
    return(Content)
}
