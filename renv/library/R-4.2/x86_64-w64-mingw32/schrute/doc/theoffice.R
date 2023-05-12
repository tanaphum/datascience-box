## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(schrute)

## -----------------------------------------------------------------------------
mydata <- schrute::theoffice

## -----------------------------------------------------------------------------
dplyr::glimpse(mydata)

## -----------------------------------------------------------------------------
 mydata %>%
  dplyr::filter(season == 1) %>%
  dplyr::filter(episode == 1) %>%
  dplyr::slice(1:3) %>%
  knitr::kable()

## -----------------------------------------------------------------------------
token.mydata <- mydata %>%
  tidytext::unnest_tokens(word, text)

## -----------------------------------------------------------------------------
 token.mydata %>%
  dplyr::filter(season == 1) %>%
  dplyr::filter(episode == 1) %>%
  dplyr::slice(1:3) %>%
  knitr::kable()

## -----------------------------------------------------------------------------
stop_words <- tidytext::stop_words

tidy.token.mydata <- token.mydata %>%
  dplyr::anti_join(stop_words, by = "word")

## -----------------------------------------------------------------------------
tidy.token.mydata %>%
  dplyr::count(word, sort = TRUE) 

## -----------------------------------------------------------------------------
tidy.token.mydata %>%
  dplyr::count(word, sort = TRUE) %>%
  dplyr::filter(n > 400) %>%
  dplyr::mutate(word = stats::reorder(word, n)) %>%
  ggplot2::ggplot(ggplot2::aes(word, n)) +
  ggplot2::geom_col() +
  ggplot2::xlab(NULL) +
  ggplot2::coord_flip() +
  ggplot2::theme_minimal()

