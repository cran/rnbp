## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
library(rnbp)

## ----eval=FALSE---------------------------------------------------------------
# library(ggplot2)
# library(rnbp)
# 
# ## Retrieve current C exchange rate table
# response <- get_current_exchangerate_table("C")
# 
# ## Retrieve content from the response
# current_exchangerate_table <- response$content$rates[[1]]
# 
# knitr::kable(current_exchangerate_table)

## ----fig.height = 4, fig.width = 8, eval=FALSE--------------------------------
# ggplot(current_exchangerate_table, aes(x = code, y = bid, fill = code)) +
#   geom_bar(stat = "identity")

## ----fig.height = 4, fig.width = 8, eval=FALSE--------------------------------
# ## Retrieve last 20 exchange rates for euros
# euros_response <- get_last_n_exchangerates("A", "EUR", 20)
# 
# ## Retrieve last 20 exchange rates for euros
# dollars_response <- get_last_n_exchangerates("A", "USD", 20)
# 
# ## Retrieve rates data
# euros_data <- euros_response$content$rates
# dollars_data <- dollars_response$content$rates
# 
# ## Add currency code columns
# euros_data$code <- euros_response$content$code
# dollars_data$code <- dollars_response$content$code
# currency_data <- rbind(euros_data, dollars_data)
# 
# ggplot(currency_data, aes(x = effectiveDate, y = mid, col = code)) +
#   geom_line() +
#   geom_point()

## ----fig.height = 4, fig.width = 8, warning = FALSE, eval=FALSE---------------
# current_date <- Sys.Date()
# response <- get_goldprice_from_interval(current_date - 90, current_date)
# 
# ggplot(response$content, aes(x = data, y = cena)) +
#   geom_point() +
#   geom_line() +
#   geom_smooth()

