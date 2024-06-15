library(tidyverse)
library(here)
library(janitor)
library(skimr)

disney <- read_csv("C:\\Users\\Administrator\\OneDrive\\Desktop\\Syracuse University\\Spring 2022 - Volume 2\\IST 719 (Information Visualization)\\Projects\\disney_movies_total_gross.csv")

options(scipen = 10000)

# Top 15 Highest Grossing Films
disney %>%
  arrange(desc(total_gross)) %>%
  head(15) %>%
  ggplot() + geom_col(aes(y = movie_title, x = total_gross), fill = "navyblue") + 
    labs(title = "Top 15 Highest Grossing Films", y = "Movie", x = "Total Gross") +
      theme(legend.position = "none") +
        theme_light() +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )

# Top 15 Highest Grossing Films (Adjusted for Inflation)
disney %>%
  arrange(desc(total_gross)) %>%
  head(15) %>%
  ggplot() + geom_col(aes(y = movie_title, x = inflation_adjusted_gross), fill = "darkred") + 
  labs(title = "Top 15 Highest Grossing Films (Adjusted for Inflation)", y = "Movie", x = "Total Gross") +
  theme(legend.position = "none") +
  theme_light() +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )


# Total Gross by Year
disney %>%
  separate(release_date, c("year", "month", "day"), sep = "-") %>%
  group_by(year) %>%
  summarise(total_gross = sum(total_gross)) %>%
  ggplot() + 
    geom_line(aes(x = year, y = total_gross, group = 1), col = "navyblue") + 
      theme_light() +
        theme(axis.text.x = element_text(face = "bold", size = 7, angle = 90)) + 
          labs(title = "Total Gross by Year", x = "Year", y = "Total Gross")

# Total Gross by Year (Adjusted for Inflation)
disney %>%
  separate(release_date, c("year", "month", "day"), sep = "-") %>%
  group_by(year) %>%
  summarise(inflation_adjusted_gross = sum(inflation_adjusted_gross)) %>%
  ggplot() + 
  geom_line(aes(x = year, y = inflation_adjusted_gross, group = 1), col = "darkred") + 
  theme_light() +
  theme(axis.text.x = element_text(face = "bold", size = 7, angle = 90)) + 
  labs(title = "Total Gross by Year (Adjusted for Inflation)", x = "Year", y = "Total Gross (Adjusted for Inflation)")

# Total Gross by Year (Multi-Dimensional)
p <- disney %>%
  separate(release_date, c("year", "month", "day"), sep = "-") %>%
  group_by(year) %>%
  summarise(inflation_adjusted_gross = sum(inflation_adjusted_gross), total_gross = sum(total_gross)) %>%
  ggplot() + 
  geom_line(aes(x = year, y = inflation_adjusted_gross, group = 1), col = "darkred") + 
  geom_line(aes(x = year, y = total_gross, group = 1), col = "navyblue") +
  theme_light() +
  theme(axis.text.x = element_text(face = "bold", size = 7, angle = 90)) + 
  labs(title = "Total Gross by Year", x = "Year", y = "Total Gross") +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )

library(svglite)
ggsave(
  plot = p,
  filename = "tr_tst2.svg",
  bg = "transparent"
)


# Total Gross by Genre
disney %>%
  group_by(genre) %>%
  summarise(total_gross = sum(total_gross)) %>%
  ggplot() + 
    geom_col(aes(x = genre, y = total_gross), fill = "navyblue") + 
      labs(title = "Total Gross by Genre", x = "Genre", y = "Total Gross") + 
        theme_light() +
          theme(axis.text.x = element_text(face = "bold", size = 7, angle = 90)) +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )


# Distribution of Genres
ggplot(disney, aes(x = reorder(genre, genre, function(x) - length(x)))) +
  geom_bar(fill = "red") +  
  labs(x = 'Genre') + 
  coord_flip() +
  theme_light() +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )
  

# Distribution of MPAA Ratings
ggplot(disney, aes(x = reorder(mpaa_rating, mpaa_rating, function(x) - length(x)))) +
  geom_bar(fill = "red") +  
  labs(x = "MPAA Rating") + 
  coord_flip() +
  theme_light() +
  theme(
    panel.background = element_rect(fill = "transparent", colour = NA),
    plot.background = element_rect(fill = "transparent", colour = NA)
  )


disney2 <- na.omit(disney)
disney2 <- disney2[order(-disney2$total_gross), ]  
disney2 <- disney2[-grep("Not Rated", disney2$mpaa_rating), ]
disney2 <- disney2[-grep("Concert/Performance", disney2$genre), ]
disney2 <- disney2[-grep("Black Comedy", disney2$genre), ]
disney2 <- disney2[-grep("Horror", disney2$genre), ]
disney2 <- disney2[-grep("Western", disney2$genre), ]
disney2 <- disney2[-grep("Musical", disney2$genre), ]
disney2 <- disney2[-grep("Documentary", disney2$genre), ]
disney2 <- disney2[-grep("Romantic Comedy", disney2$genre), ]


# Multi 2
df2 <- data.frame(rating = disney2$mpaa_rating
                 , gross = disney2$total_gross
                 , genre = disney2$genre)

df2.grouped <- tapply(df2$gross, list(df2$rating, df2$genre), sum)

barplot(df2.grouped, main = "Comparison of Total Gross Income"
        , col = c("red", "blue", "yellow", "green"), legend = TRUE, beside = T)







