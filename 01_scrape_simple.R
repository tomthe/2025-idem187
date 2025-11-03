# Load required libraries
library(httr)
library(xml2)   # for parsing HTML
library(rvest)  # for easier extraction (optional but useful)
library(magrittr)

# Define the target URL
url <- "https://example.com/"

# Send a GET request
response <- httr::GET(url)

# Check the status
if (httr::status_code(response) != 200) {
  stop("Request failed with status: ", httr::status_code(response))
}

# Extract the content as text
page_content <- httr::content(response, as = "text", encoding = "UTF-8")

# Parse the content into an HTML document
html_doc <- xml2::read_html(page_content)

# Example: Extract the title of the page
page_title <- html_doc %>% rvest::html_node("title") %>% rvest::html_text()
cat("Page title:", page_title, "\n")

# Example: Extract all paragraph texts
paragraphs <- html_doc %>% rvest::html_nodes("p") %>% rvest::html_text()
cat("Paragraphs:\n")
print(paragraphs)

# (Optional) Save page content to a file
writeLines(page_content, con = "example_com_page.html")

# End of script
