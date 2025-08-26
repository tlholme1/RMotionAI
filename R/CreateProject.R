#' Create a project
#'
#' Create a project in Motion.
#'
#' @param Token API token string.
#' @param Project List describing the project fields.
#'
#' @return data.table with the created project.
#' @family projects
#' @export
CreateProject <- function(Token, Project) {
    Result <- .PerformRequest("POST", "/projects", Token, Body = Project)
    return(Result)
}
