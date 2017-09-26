dc <- function(x) Filter(Negate(is.null), x)

check_url <- function(x){
  tmp <- if (is.null(x)) Sys.getenv("DISCOURSE_URL", "") else x
  if (tmp == "") getOption("discourse_url", stop("need a Discourse url")) else tmp
}

check_key <- function(x){
  tmp <- if (is.null(x)) Sys.getenv("DISCOURSE_API_KEY", "") else x
  if (tmp == "") getOption("discourse_api_key", stop("need an API key for Discourse")) else tmp
}

check_user <- function(x){
  tmp <- if (is.null(x)) Sys.getenv("DISCOURSE_USERNAME", "") else x
  if (tmp == "") getOption("discourse_username", stop("need a Discourse username")) else tmp
}

use_auth <- function(key = NULL, user = NULL) {
  # if each of key or user are not null, then assume auth is needed
  tmp <- !is.null(key) & !is.null(user)
  return(tmp)
}
