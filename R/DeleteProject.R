#' Delete a project
#'
#' Delete a project from Motion.
#'
#' @param Token API token string.
#' @param ProjectId Identifier of the project to delete.
#'
#' @return data.table with deletion confirmation.
#' @export
DeleteProject <- function(Token, ProjectId) {
    Endpoint <- paste0("/projects/", ProjectId)
    Result <- .PerformRequest("DELETE", Endpoint, Token)
    return(Result)
}
