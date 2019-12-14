library(googleAuthR)
library(searchConsoleR)

scr_auth()

sc_params_from <- "2019-09-01"
sc_params_to <- "2019-11-30"
sc_params_property <- "https://www.zatkovic.cz/"
sc_row_limit <- 100000

sc_dates <- search_analytics(sc_params_property,
                             sc_params_from,
                             sc_params_to,
                             dimensions = c("date"),
                             searchType = "web",
                             rowLimit = sc_row_limit)

sc_page <- search_analytics(sc_params_property,
                            sc_params_from,
                            sc_params_to,
                            dimensions = c("page"),
                            searchType = "web",
                            rowLimit = sc_row_limit)

sc_query <- search_analytics(sc_params_property,
                             sc_params_from,
                             sc_params_to,
                             dimensions = c("query"),
                             searchType = "web",
                             rowLimit = sc_row_limit)

sc_pagequery <- search_analytics(sc_params_property,
                                 sc_params_from,
                                 sc_params_to,
                                 dimensions = c("page", "query"),
                                 searchType = "web",
                                 rowLimit = sc_row_limit)
