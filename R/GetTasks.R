#' Get tasks
#'
#' Retrieve tasks from Motion.
#'
#' @param Token API token string.
#' @param Query Optional list of query parameters.
#'
#' @return data.table of tasks.
#' @export
GetTasks <- function(Token, Query = NULL) {
    Result <- .PerformRequest("GET", "/tasks", Token, Query = Query)
    return(Result)
}
