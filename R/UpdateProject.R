#' Update a project
#'
#' Update an existing project in Motion.
#'
#' @param Token API token string.
#' @param ProjectId Identifier of the project to update.
#' @param Project List describing project fields to update.
#'
#' @return data.table with the updated project.
#' @export
UpdateProject <- function(Token, ProjectId, Project) {
    Endpoint <- paste0("/projects/", ProjectId)
    Result <- .PerformRequest("PATCH", Endpoint, Token, Body = Project)
    return(Result)
}
