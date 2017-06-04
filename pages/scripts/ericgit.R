source("pages/scripts/github-api.R")

repo_df <- getUserInfo("ericsueckert")

# A bar plot showing number of repositories per language
summary_data <- repo_df %>% group_by(language) %>%
  summarise(
    total_repos = n()
  )
p <- plot_ly(summary_data, x = summary_data$language, y = summary_data$total_repos,
        type = 'bar',
        color = summary_data$total_repos
)
git <-  p %>% layout(xaxis = list(title = "Language"), yaxis = list(title = "Number of Repositories"))
