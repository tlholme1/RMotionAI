#' Get projects
#'
#' Retrieve projects from Motion.
#'
#' @param Token API token string.
#' @param Query Optional list of query parameters.
#'
#' @return data.table of projects.
#' @family projects
#' @export
GetProjects <- function(Token, Query = NULL) {
    Result <- .PerformRequest("GET", "/projects", Token, Query = Query)
    return(Result)
}
