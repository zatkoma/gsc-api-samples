# Google Search Console API

If you need to download more data from GSC, you need to use API. The easiest way is using **Google Sheets Extension**, but when you have a large website, or you want to do some analysis, you need to use **R** or **Python programming languages**. In this repository, you could find basics (this file) and extended samples in folders.

## GSC API in R

The first step is the installation of the packages which you need to use. First, provide your authentication to your Google account, and the second one is about functions that work with GSC API.

```R
install.packages("googleAuthR")
install.packages("searchConsoleR")
```

When you have all the packages installed, you could load packages to your instance. 

```R
library(googleAuthR)
library(searchConsoleR)
```

After loading packages, you could authenticate to GSC API. After running this line, you could see a pop-up in the browser when you must log in to your Google account. 

```R
scr_auth()
```

I've recommended using parameters, so you must set them. For the first, you must set up the start and end date. Don't forget that you haven't data in GSC for the last three days. These packages return an error when you don't use them after setting dates. You must set up your domain (e.g., property), which is in GSC console. 

```R
sc_params_from <- "2019-01-01"
sc_params_to <- "2019-11-31"
sc_params_property <- "domena.cz"
sc_row_limit <- 100000
```

### Pages:

```R
## Pages download:
sc_page <- search_analytics(sc_params_property, 
  sc_params_from, 
  sc_params_to, 
  dimensions = c("page"), 
  searchType = "web", 
  rowLimit = sc_row_limit)
```

**Result:**

### Query:

```R
## Query download:
sc_page <- search_analytics(sc_params_property, 
  sc_params_from, 
  sc_params_to, 
  dimensions = c("query"), 
  searchType = "web", 
  rowLimit = sc_row_limit)
```

**Result:**

### Page and Query:

```R
## Pagd + Query download:
sc_pagequery <- search_analytics(sc_params_property, 
  sc_params_from, 
  sc_params_to, 
  dimensions = c("page", "query"), 
  searchType = "web", 
  rowLimit = sc_row_limit)
```

**Result:**
