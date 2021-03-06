% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/func_get.R
\name{trem_get}
\alias{trem_get}
\title{Perform a GET request to Tremendous API}
\usage{
trem_get(
  client,
  path,
  query = list(),
  disk = NULL,
  stream = NULL,
  parse = TRUE
)
}
\arguments{
\item{client}{A Tremendous API Client object, created with
\code{\link{trem_client_new}}.}

\item{path}{The URL path, appended to the base URL, for GET requests such as
listing available payment types, funding sources, account members, and
more. See the \href{https://developers.tremendous.com/}{Tremendous API Documentation} for examples.}

\item{query}{Query terms as a named list. See \link[crul:HttpClient]{crul::HttpClient} for more
details.}

\item{disk}{A path to write to. \code{NULL} by default, so info is written to
memory. See \link[crul:HttpClient]{crul::HttpClient} for more details.}

\item{stream}{An R function to determine how to stream data. \code{NULL} by
default, so info is streaned with memory. See \link[crul:HttpClient]{crul::HttpClient} for more
details.}

\item{parse}{Logical: Should the API Response results be parsed into a data
frame?}
}
\value{
If \code{parse = TRUE} (default), a list containing the
response from the API request. Otherwise, the R6 HttpResponse object
containing API request data.
}
\description{
This function provides lower-level access to perform GET
requests via Tremendous API. Available endpoints can be found on the
official \href{https://developers.tremendous.com/}{Tremendous API documentation}.
}
\examples{

\dontrun{

# Create a new Tremendous API Client
test_client <- trem_client_new(api_key = "TEST_YOUR-API-KEY-HERE",
sandbox = TRUE) # Sandbox environment so no actual money is sent

# Perform a GET request to list funding sources available in your Tremendous
# Account. Documentation:
# https://developers.tremendous.com/reference/core-funding-source-index
trem_get(trem_client, "funding_sources")

# Perform a GET request to list all invoices on your Tremendous Account.
# Documentation:
# https://developers.tremendous.com/reference/core-invoices-index
trem_get(trem_client, "invoices")

# Perform a GET request to list all orders (payment history) on your Tremendous
# Account. Documentation:
# https://developers.tremendous.com/reference/core-orders-index
trem_get(trem_client, "orders")

# Perform a GET request to list a specific order's information (payment history)
# from your Tremendous Account. Documentation:
# https://developers.tremendous.com/reference/core-orders-show
trem_get(trem_client, "orders/YOUR-ORDER-ID")

  }

}
