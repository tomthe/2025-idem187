url <- "https://www.demogr.mpg.de/en/about_us_6113/staff_directory_1899/"

# Goal: Scrape this website and create a dataset about the staff
library(httr)
library(rvest)
library(dplyr)
library(purrr)

# --- 2. Request page ---
page <- GET(url)
html <- read_html(page)

# --- 3. Extract all staff blocks ---
staff_blocks <- html %>%
  html_elements(".staffdirectory-item")

# --- 4. Loop through each block to extract name and role ---
staff_df <- map_dfr(staff_blocks, function(block) {
  name <- block %>%
    html_element(".staffdirectory-item-name a[href*='staff_directory']") %>%
    html_text(trim = TRUE)
  
  role <- block %>%
    html_element(".staffdirectory-item-function") %>%
    html_text(trim = TRUE)
  
  tibble(name = name, role = role)
})

# --- 5. Inspect results ---
print(staff_df)
