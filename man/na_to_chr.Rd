% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/na_to_chr.R
\name{na_to_chr}
\alias{na_to_chr}
\title{Convert NA values to character}
\usage{
na_to_chr(x, na)
}
\arguments{
\item{x}{vector with NA values}

\item{na}{value to replace for the existing NA in x vector}
}
\value{
A modified version of x that replace any NA values with the one set in na argument
}
\description{
Convert NA values to character
}
\examples{

sample <- c("text 1", NA, "text 2", "text 3", NA)

na_to_chr(sample, "ex_na")

}
