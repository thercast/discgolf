% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/users.R
\name{users}
\alias{user}
\alias{user_activate}
\alias{user_create}
\alias{user_delete}
\alias{user_update_email}
\alias{user_update_username}
\alias{users}
\alias{users_list}
\title{Work with users}
\usage{
user(username, url = NULL, key = NULL, user = NULL, ...)

users_list(type, url = NULL, key = NULL, user = NULL, ...)

user_create(name, email, username, password, url = NULL, key = NULL,
  user = NULL, ...)

user_activate(user_id, url = NULL, key = NULL, user = NULL, ...)

user_delete(user_id, url = NULL, key = NULL, user = NULL, ...)

user_update_email(username, email, url = NULL, key = NULL, user = NULL,
  ...)

user_update_username(username, new_username, url = NULL, key = NULL,
  user = NULL, ...)
}
\arguments{
\item{username}{A user name}

\item{url}{Base url for a Discourse installation. See \code{\link{disc_setup}}}

\item{key}{Your api key on the Discourse installation. See \code{\link{disc_setup}}}

\item{user}{Your user name on the Discourse installation. See \code{\link{disc_setup}}}

\item{...}{Named parameters passed on to \code{\link[httr]{GET}},
\code{\link[httr]{POST}}, \code{\link[httr]{PUT}}, or \code{\link[httr]{DELETE}}}

\item{type}{A type of user, one of active, staff, new, suspended, blocked, or suspect}

\item{name}{a name}

\item{email}{an email address}

\item{password}{a password}

\item{user_id}{a user id}

\item{new_username}{a username}
}
\description{
Work with users
}
\section{users_list}{

note that there is no paging, so if you have more than 100 users, you only
get the first 100. :sad panda:
}
\examples{
\dontrun{
# list a user
user('sckott')
user('cboettig')

# list users
users_list('staff')
users_list('new')

# create a user
(x <- user_create("jane doe", "jane@doe.com", "jane_doe", "afafasfdasdf"))

# activate a user
user_activate(x$user_id)

# upate email address
user_update_email('jane_doe', 'jane2@doe.com')

# upate user name
user_update_username('jane_doe', 'jane_doe2')

# delete a user
user_delete(x$user_id)
}
}

