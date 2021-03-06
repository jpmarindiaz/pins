% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/board.R
\name{board_register}
\alias{board_register}
\title{Register Board}
\usage{
board_register(board, name = board, cache = board_cache_path(),
  versions = NULL, ...)
}
\arguments{
\item{board}{The name of the board to register.}

\item{name}{An optional name to identify this board, defaults to the board name.}

\item{cache}{The local folder to use as a cache, defaults to \code{board_cache_path()}.}

\item{versions}{Should this board be registered with support for versions?}

\item{...}{Additional parameters required to initialize a particular board.}
}
\description{
Registers a board, useful to find resources with \code{pin_find()} or pin to
additional boards with \code{pin()}.
}
\details{
A board requires a local cache to avoid downloading files multiple times. It is
recommended to not specify the \code{cache} parameter since it defaults to a well
known \code{rappdirs}. However, you are welcome to specify any other
location for this cache or even a temp folder with \code{tempfile()}. Notice that,
when using a temp folder, pins will be cleared when your R session restarts. The
cache parameter can be also set with the \code{pins.path} option.

The \code{versions} parameter default to different values depending on which board
is choosed. For instance, local boards do not use versions by default, but GitHub
boards do.
}
\examples{
# create a new local board
board_register("local", "other_board", cache = tempfile())

# create a Website board
board_register("datatxt",
               name = "txtexample",
               url = "https://datatxt.org/data.txt",
               cache = tempfile())

}
\seealso{
\code{\link{board_register_local}}, \code{\link{board_register_github}},
  \code{\link{board_register_kaggle}}, \code{\link{board_register_rsconnect}} and
  \code{\link{board_register_datatxt}}.
}
