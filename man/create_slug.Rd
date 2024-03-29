% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_slug.R
\name{create_slug}
\alias{create_slug}
\title{Create slug from string}
\usage{
create_slug(x, sep = "-", append_random = FALSE, append_random_n = 5)
}
\arguments{
\item{x}{character vector}

\item{sep}{word separator in slug, '-' by default}
}
\value{
A slug version of the string
}
\description{
Create slug from string
}
\examples{

sample <- c("text 1", NA, "text 2", "text 3", NA)

create_slug(sample, "ex_na")

}
