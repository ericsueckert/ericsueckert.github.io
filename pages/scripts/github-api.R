

getUserInfo <- function(user) {
  # create variables for different parts of the query url
  access_token <- "?access_token=035bfac119146d61224807b2d9fbc935f04b9d63"
  base_url <- "https://api.github.com/users/"
  # user <- "ericsueckert"
  parameters <- "&per_page=100&created=desc"
  
  # put together query url
  query_url <- paste0(base_url, user, access_token, parameters)
  
  # grab repository query url from user data from user query, then store repository data
  user_data <- fromJSON(query_url)
  repo_data <- fromJSON(user_data$repos_url)
  # flatten data so it is all visible in one df
  repo_df <- flatten(repo_data)
  
  return(repo_df)
}