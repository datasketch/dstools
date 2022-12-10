
<!-- README.md is generated from README.Rmd. Please edit that file -->

# makeup

<!-- badges: start -->
<!-- badges: end -->

<br>

## Overview

dstools gives Datasketch a compendium of useful and generic functions in
order to improve other packages work.

## Installation

Install the development version of dstools from GitHub with:

``` r
# install.packages("devtools")
remotes::install_github("datasketch/dstools")
```

## Usage

Some of the main functions of this package are:

- Pipe `%||%` evaluates nullity between two objects and:

  1)  **return x** if neither x nor y is NULL, empty or NA
  2)  **return x** if y is NULL, empty or NA
  3)  **return y** if x is NULL, empty or NA

``` r
library(dstools)

# **return x** if neither x nor y is NULL, empty or NA
x <- "pepe"
y <- "x"

x %||% y
#> [1] "pepe"

# **return x** if y is NULL, empty or NA
x <- "pepe"
y <- NULL

x %||% y
#> [1] "pepe"

# return y if x is NULL, empty or NA
x <- NULL
y <- "x"

x %||% y
#> [1] "x"
```

- `remove_accents` eliminates accents from vocals and return the given
  string value without them

``` r
remove_accents("Thís accénts áré góing to bé removéd")
#> [1] "This accents are going to be removed"
```

- `is.empty` evaluates object emptiness

``` r
# Empty object
empty_object <- list()
is.empty(empty_object)
#> [1] TRUE

# Not empty object
non_empty_object <- "hello"
is.empty(non_empty_object)
#> [1] FALSE
```

- `na_to_chr` replace NA values with a given value

``` r
sample <- c("text 1", NA, "text 2", "text 3", NA)

na_to_chr(sample, "ex_na")
#> [1] "text 1" "ex_na"  "text 2" "text 3" "ex_na"
```

- `na_proportion` estimates the proportion of NA values in a vector

``` r
sample <- c(NA, NA, 1,2,3,4)
na_proportion(sample)
#> [1] 0.3333333
```
