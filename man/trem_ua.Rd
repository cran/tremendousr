% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{trem_ua}
\alias{trem_ua}
\title{Get useragent info for tremendousr API Package}
\usage{
trem_ua()
}
\value{
useragent info for tremendousr API Package
}
\description{
Exported for use with \code{\link{trem_client_new}} to provide useragent info
as a curl option for the API Request. This function was Adapted from
\href{https://github.com/jdtrat/chimpr/}{chimpr}.
}
\examples{

# Get useragent info for the tremendous API package
trem_ua()

}
