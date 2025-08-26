#' Delete a task
#'
#' Delete a task from Motion.
#'
#' @param Token API token string.
#' @param TaskId Identifier of the task to delete.
#'
#' @return data.table with deletion confirmation.
#' @family tasks
#' @export
DeleteTask <- function(Token, TaskId) {
    Endpoint <- paste0("/tasks/", TaskId)
    Result <- .PerformRequest("DELETE", Endpoint, Token)
    return(Result)
}
