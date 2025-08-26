#' Create a task
#'
#' Create a task in Motion.
#'
#' @param Token API token string.
#' @param Task List describing task fields.
#'
#' @return data.table with the created task.
#' @family tasks
#' @export
CreateTask <- function(Token, Task) {
    Result <- .PerformRequest("POST", "/tasks", Token, Body = Task)
    return(Result)
}
