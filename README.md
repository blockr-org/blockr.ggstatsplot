<!-- badges: start -->
<!-- badges: end -->

# blockr.ggstatsplot

[ggstatsplot](https://github.com/IndrajeetPatil/ggstatsplot/) for 
[blockr](https://github.com/blockr-org/blockr).

## Installation

You can install the development version of blockr.ggstatsplot from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("blockr-org/blockr.ggstatsplot")
```

## Example

``` r
library(shiny)
library(blockr)
library(blockr.ggstatsplot)

stack <- new_stack(
  data_block,
  ggscatterstats_block
)

serve_stack(stack)
```
