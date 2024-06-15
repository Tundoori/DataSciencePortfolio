# Changes column names of "steam_charts" to be more intuitive
cnames <- c("Date","AvgPlayers","Gain","PercentGain","PeakPlayers","AppID","Game")
colnames(steam_charts) <- cnames



# Creates "game" data frame - Removes instances of "Last 30 Days" and re-formats the date (Date column)
game <- subset(steam_charts, Date!="Last 30 Days")
game1 <- sub(" ", " 01 ", game$Date)
game$Date <- game1
game$Date <- as.Date(game$Date, "%B %d %Y"); game$Date
class(game$Date)



# Creates "gameLast30" data frame - Subset of all "Last 30 Days" fields
gameLast30 <- subset(steam_charts, steam_charts$Date == "Last 30 Days")



# Creates "gamePUBG" data frame - Subset of PUBG's data
gamePUBG <- subset(game, game$Game == "PUBG: BATTLEGROUNDS")
gamePUBG <- na.omit(gamePUBG)

################################################################################


library(tidyverse)
peak_players <- game %>% group_by(game$AppID)
summary(peak_players)


# Total number of PeakPlayers
peak <- tapply(game$PeakPlayers, game$Game, sum)
gameName <- rownames(peak)
totalPeakPlayers <- data.frame(gameName, peak)
summarise(totalPeakPlayers)

# Dota 2 has the most players of all with 87,132,203
totalPeakPlayers[which.max(totalPeakPlayers$peak),]

# Creates "gamePUBG" data frame - Subset of PUBG's data
gamePUBG <- subset(game, game$Game == "PUBG: BATTLEGROUNDS")
gamePUBG <- na.omit(gamePUBG)



library(ggplot2)

ggplot(gamePUBG) +
  geom_point(aes(x = Date, y = AvgPlayers)) +
  labs(title = "PUBG - Average Player Count by Year", x = "Year", y = "Average Player Count")

ggplot(game) +
  geom_point(aes(x = Date, y = AvgPlayers)) +
  labs(title = "Average Player Count by Year", x = "Year", y = "Average Player Count")



gameLast30Sorted <- gameLast30[order(-gameLast30$PeakPlayers),]
gameLast30Sorted <- na.omit(gameLast30Sorted)


gameLast30Sorted2 <- gameLast30Sorted[order(-gameLast30$AvgPlayers),]

ggplot(gameLast30Sorted) +
  gg_point(aes(x = ))


quantile(gameLast30Sorted$AvgPlayers, probs = c(.5, .9))


install.packages("data.table")
library(data.table)
require(data.table)
d <- data.table(game, key="AvgPlayers")
c <- d[, tail(.SD, 3), by=AvgPlayers]


data_new3 <- game[order(game$AvgPlayers, decreasing = TRUE), ]  # Top N highest values by group
data_new3 <- data.table(data_new3, key = "group")
data_new3 <- data_new3[ , head(.SD, 3), by = group]
data_new3    

library(dplyr)

data_new1 <- game[order(game$AvgPlayer, decreasing = TRUE), ]  # Order data descending

data_new1 <- Reduce(rbind,                                 # Top N highest values by group
                    by(data_new1,
                       data_new1["AvgPlayer"],
                       head,
                       n = 3))
data_new1






library(tidyverse)

avgPeakPlayers <- mean(game$PeakPlayers)
topGames <- game[game$PeakPlayers > avgPeakPlayers,]
ggplot(topGames) +
  aes(x=topGames$Month, y=topGames$AvgPlayer, group = 1) +
  geom_line() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

data_new2 <- topGames %>%                                     
  arrange (desc(Month, AvgPlayer)) %>%
  group_by(Game) %>%
  slice(1:12)



require(data.table)
d <- data.table(game, key="Game")
d[, head(.SD, 3), by=Game]


library(ggplot2)
ggplot(gameLast30, aes(AvgPlayers)) + geom_histogram(binwidth = 2)+
  scale_x_continuous("Average Player Count", breaks = seq(0,270,by = 30))+
  scale_y_continuous("Count", breaks = seq(0,200,by = 20))+
  labs(title = "Histogram")






library(dplyr)
gameGrouped <- game %>%
  group_by(Game) %>% 
  summarise(AvgPlayer = min(start), PeakPlayers = max(AvgPlayer))



percToNum <- function(x){
  removePerc <- sub("%", "", x)
  toNumeric <- as.numeric(removePerc)
}

gameLast30[['PercentGain']] = percToNum(gameLast30[['PercentGain']])



gameLast30Top <- gameLast30[with(gameLast30, order(-PercentGain)),]
gameLast30Top <- gameLast30Top[1:10,]

gameLast30Bottom <- gameLast30[with(gameLast30, order(PercentGain)),]
gameLast30Bottom <- gameLast30Bottom[1:10,]











# greating a year column
vals <- substr(game$Month,1,4)
game$Year <- as.numeric(vals)

# great a 2 digit month column
vals2 <- substr(game$Month,6,7)
game$month2 <- as.numeric(vals2)
gameTop10 <- game[with(game, order(-AvgPlayer,Game)),]
gameTop10 <- gameTop10[1:1000,]




outliers <- boxplot(game$, plot=FALSE)$out
x <- warpbreaks
x <- x[-which(x$breaks %in% outliers),]

install.packages("ggstatsplot")
library(ggstatsplot)
ggbetweenstats(eliminated, wool, breaks, outlier.tagging = TRUE)

################################################################################


## Text Mining and Word Cloud

library(quanteda)
library(quanteda.textplots)


## Top 500 and Bottom 500 performing games of November

gameLast30.Top500 <- gameLast30[with(gameLast30, order(-PercentGain)),]
gameLast30.Top500 <- gameLast30.Top500[1:500,]

gameLast30.Bottom500 <- gameLast30[with(gameLast30, order(PercentGain)),]
gameLast30.Bottom500 <- gameLast30.Bottom500[1:500,]


## Corpus, Tokens, and Word Cloud for Top 500 (November)

gameCorpus.Top <- corpus(gameLast30.Top500$Game)

toks.Top <- tokens(gameCorpus.Top, remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE)
toksNoStops.Top <- tokens_select(toks.Top, pattern = stopwords("english"), selection = "remove")

gameDFM.Top <- dfm(toksNoStops.Top, remove = c("Ã", "Â", "¯", "¿", "½", "¢", "®", "é", "»", "'", "ç", ">", "S", "Y", "å", "T", "¨"))

gameWC.Top <- textplot_wordcloud(gameDFM.Top, min_count = 2)


## Corpus, Tokens, and Word Cloud for Bottom 500 (November)

gameCorpus.Bottom <- corpus(gameLast30.Bottom500$Game)

toks.Bottom <- tokens(gameCorpus.Bottom, remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE)
toksNoStops.Bottom <- tokens_select(toks.Bottom, pattern = stopwords("english"), selection = "remove")

gameDFM.Bottom <- dfm(toksNoStops.Bottom, remove = c("Ã", "Â", "¯", "¿", "½", "¢", "®", "é", "»", "'", "ç", ">", "S", "Y", "å", "T", "¨"))

gameWC.Bottom <- textplot_wordcloud(gameDFM.Bottom, min_count = 2)












library(tidyverse)
library(ggplot2)
library(ggthemes)
library(scales)

game %>%
  ggplot() + aes(x = Gain) + geom_histogram(bins = 100, fill = "lightblue", color = "darkblue") + 
    theme_fivethirtyeight(base_size = 13) + 
    scale_y_continuous(labels = comma) + 
    theme(plot.title = element_text(hjust = .5), axis.title = element_text(size = 15), axis.text = element_text(size = 12)) + 
    xlab("\nPlayers Gained / Lost That Month") + ylab("# of Observations\n") + 
    ggtitle("Players Gained Distirbution")









## Top 5 Games Analysis (Line Chart)

library(tidyverse)
library(ggplot2)
library(ggthemes)
library(scales)

top5 <- c("Counter-Strike: Global Offensive", "Dota 2", "PUBG: BATTLEGROUNDS", "Apex Legends", "Grand Theft Auto V")

game %>% 
  filter(Game %in% top5) %>% 
  ggplot() + aes(x = Month, y = AvgPlayers, color = Game) + geom_line(size = 1) + 
  theme_fivethirtyeight(base_size = 10) + scale_y_continuous(labels = comma) + 
  theme(plot.title = element_text(hjust = 0.5), axis.title = element_text(size = 14), axis.text = element_text(size = 12)) + 
  xlab("Year") + ylab("Average Player Count") + ggtitle("Average Player Count (By Month)") + 
  scale_colour_manual(values = c("violet", "blue", "red", "green", "orange"), name = "Game Title")













