#' Update a task
#'
#' Update an existing task in Motion.
#'
#' @param Token API token string.
#' @param TaskId Identifier of the task to update.
#' @param Task List describing task fields to update.
#'
#' @return data.table with the updated task.
#' @family tasks
#' @export
UpdateTask <- function(Token, TaskId, Task) {
    Endpoint <- paste0("/tasks/", TaskId)
    Result <- .PerformRequest("PATCH", Endpoint, Token, Body = Task)
    return(Result)
}
