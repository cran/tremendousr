% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/func_send-payment.R
\name{trem_send_reward}
\alias{trem_send_reward}
\title{Send a Reward via Tremendous API}
\usage{
trem_send_reward(
  client,
  name,
  email = NULL,
  phone = NULL,
  reward_amount,
  currency_code = "USD",
  delivery_method = "EMAIL",
  payment_description_id,
  funding_source_id,
  reward_types,
  parse = TRUE
)
}
\arguments{
\item{client}{A Tremendous API Client object, created with
\code{\link{trem_client_new}}.}

\item{name}{Name of the recipient.}

\item{email}{Email address of the recipient.}

\item{phone}{Phone number of the recipient (US phone numbers only).}

\item{reward_amount}{Amount of the reward (numeric).}

\item{currency_code}{Currency of the reward (default to "USD").}

\item{delivery_method}{Default to "EMAIL", for sending the reward to the
recipient via email. Alternatively, reward can be delivered via a link
("LINK") or text message ("PHONE").}

\item{payment_description_id}{Unique ID for specific order. This will appear
as \code{external_id} on Tremendous Dashboard.}

\item{funding_source_id}{ID of the funding source linked to your account, to
draw funds from for this order. One of the IDs from
\code{trem_get("funding_sources")}.}

\item{reward_types}{A character vector of product ids -- reward options --
for the recipient to choose from. Available options can be found
\href{https://www.tremendous.com/catalog}{here}.}

\item{parse}{Logical: Should the API Response results be parsed into a data
frame?}
}
\value{
If \code{parse = TRUE} (default), a list containing the response
from payment API request. Otherwise, the R6 HttpResponse object containing
API request data.
}
\description{
The most likely reason to use the tremendousr package is to send rewards
This function, \code{trem_send_reward()}, provides an easy interface to do so. See the
examples for more details.
}
\examples{

\dontrun{

  # Create a Tremendous Client
  test_client <- trem_client_new(api_key = "TEST_YOUR-KEY-HERE",
                                 sandbox = TRUE) # Sandbox environment so no actual money is sent

  # To send a payment, you can simply pass in the client
  # and specify the necessary fields.
  payment1 <- trem_send_reward(client = test_client,
                           name = "first last",
                           email = "email@website.com",
                           reward_amount = 10,
                           currency_code = "USD",
                           delivery_method = "EMAIL",
                           payment_description_id = "payment-from-tremendousr-examples",
                           funding_source_id = "your-funding-id-from-tremendous",
                           reward_types = "Q24BD9EZ332JT", # ID for virtual visa gift card
                           parse = TRUE # Return a parsed API response
  )

}


}
