# Load required library
library(httr)
library(jsonlite)

# Your API key
api_key <- "your_openai_api_key_here"

# API endpoint
url <- "https://api.openai.com/v1/chat/completions"

# The request body
body <- list(
  model = "gpt-4o-mini",  # You can change to "gpt-4" or "gpt-3.5-turbo"
  messages = list(
    list(role = "system", content = "You are a helpful assistant."),
    list(role = "user", content = "Hello, can you tell me a joke about demography?")
  )
)

# Make the POST request
response <- POST(
  url,
  add_headers(
    Authorization = paste("Bearer", api_key),
    "Content-Type" = "application/json"
  ),
  body = toJSON(body, auto_unbox = TRUE)
)

# Parse the response
result <- content(response, as = "parsed")
cat(result$choices[[1]]$message$content)
