% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/board_registration.R
\name{board_register_gcloud}
\alias{board_register_gcloud}
\title{Register Google Cloud Board}
\usage{
board_register_gcloud(name = "gcloud",
  bucket = Sys.getenv("GCLOUD_STORAGE_BUCKET"), token = NULL,
  cache = board_cache_path(), ...)
}
\arguments{
\item{name}{Optional name for this board, defaults to 'gcloud'.}

\item{bucket}{The name of the Google Cloud Storage bucket. Defaults to the \code{GCLOUD_STORAGE_BUCKET} environment
variable.}

\item{token}{The access token of the Google Cloud Storage container. Defaults to use the Google Cloud SDK if configured.}

\item{cache}{The local folder to use as a cache, defaults to \code{board_cache_path()}.}

\item{...}{Additional parameters required to initialize a particular board.}
}
\description{
Wrapper with explicit parameters over \code{board_register()} to
register a Google Cloud Storage container as a board.
}
\details{
This function requires a Google Cloud Storage container to be manually created; otherwise,
registering a Google Cloud board will fail.
}
\examples{
\dontrun{
# the following example requires the Google Cloud SDK to be configured
board_register_gcloud(container = "gcloudcontainer")
}
}
\seealso{
board_register
}
