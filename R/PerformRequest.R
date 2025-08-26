#' Perform HTTP request
#'
#' Internal helper to send a request to the Motion API.
#'
#' @param Method HTTP method (e.g., "GET").
#' @param Endpoint API endpoint path.
#' @param Token API token string.
#' @param Body Optional list for request body.
#' @param Query Optional list of query parameters.
#'
#' @return Parsed response object.
#' @family utilities
#' @keywords internal
.PerformRequest <- function(Method, Endpoint, Token, Body = NULL, Query = NULL) {
    Url <- .BuildUrl(Endpoint)
    Headers <- add_headers(Authorization = paste("Bearer", Token), `Content-Type` = "application/json")
    if (!is.null(Body)) {
        Body <- toJSON(Body, auto_unbox = TRUE)
    }
    Response <- VERB(Method, Url, headers = Headers, body = Body, query = Query)
    Result <- .HandleResponse(Response)
    return(Result)
}
