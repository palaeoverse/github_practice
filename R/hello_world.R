#' Say hello
#'
#' Prints a greeting to the console and returns it invisibly.
#'
#' @param name A character string giving the name to greet. Defaults to
#'   `"world"`.
#'
#' @return The greeting as a character string, invisibly.
#'
#' @examples
#' hello_world()
#' hello_world("Palaeoverse")
#'
#' @export
hello_world <- function(name = "world") {
  if (!is.character(name) || length(name) != 1) {
    stop("`name` must be a single character string.", call. = FALSE)
  }
  greeting <- paste0("Hello, ", name, "!")
  message(greeting)
  invisible(greeting)
}