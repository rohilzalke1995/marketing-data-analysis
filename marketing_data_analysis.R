#Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the
#pricing flexibility helps Cyclistic attract more customers, the company believes that maximizing the number of annual members will
#be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a
#very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic
#program and have chosen Cyclistic for their mobility needs.

#Company has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to
#do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why
#casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are
#interested in analyzing the Cyclistic historical bike trip data to identify trends.

library(tidyverse)
library(dplyr)
library(lubridate)
library(ggplot2)
#Sets the working directory
setwd("F:/Coursera Google Data analytics/Project/Data")

files_path <- fs::dir_ls("F:/Coursera Google Data analytics/Project/Data")
files_path[[1]]
#file_contents <- list()

for (i in seq_along(files_path)) {
  a <- paste('df', substr(files_path[i], 48, 53), sep='')
  
  assign(a, read_csv(files_path[[i]]))
  #paste('df', substr(a, 48, 55), sep='') <- read_csv(
  #  file = files_path[[i]]
  
}

colnames(df202004)
colnames(df202005)
colnames(df202006)
colnames(df202007)
colnames(df202008)
colnames(df202009)
colnames(df202010)
colnames(df202011)
colnames(df202012)
colnames(df202101)
colnames(df202102)
colnames(df202103)
colnames(df202104)
colnames(df202105)
colnames(df202106)




str(df202004)
str(df202005)
str(df202006)
str(df202007)
str(df202008)
str(df202009)
str(df202010)
str(df202011)
str(df202012)
str(df202101)
str(df202102)
str(df202103)
str(df202104)
str(df202105)
str(df202106)



(df202004 <- rename(df202004,bikeid = rideable_type ))
df202005 <- rename(df202005, bike_id = rideable_type)
(df202006 <- rename(df202006, bikeid = rideable_type))
(df202007 <- rename(df202007, bikeid = rideable_type))
(df202008 <- rename(df202008, bike_id = rideable_type))
(df202009 <- rename(df202009, bike_id = rideable_type))
(df202010 <- rename(df202010, bike_id = rideable_type))
(df202011 <- rename(df202011, bike_id = rideable_type))
(df202012 <- rename(df202012, bike_id = rideable_type))
(df202101 <- rename(df202101, bike_id = rideable_type))
(df202102 <- rename(df202102, bike_id = rideable_type))
(df202103 <- rename(df202103, bike_id = rideable_type))
(df202104 <- rename(df202104, bike_id = rideable_type))
(df202105 <- rename(df202105, bike_id = rideable_type))
(df202106 <- rename(df202106, bike_id = rideable_type))


df202010 <- mutate(df202010, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202011 <- mutate(df202011, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202012 <- mutate(df202012, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202101 <- mutate(df202101, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202102 <- mutate(df202102, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202102 <- mutate(df202102, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202103 <- mutate(df202103, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202103 <- mutate(df202103, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202104 <- mutate(df202104, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))
df202105 <- mutate(df202105, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))  
df202106 <- mutate(df202106, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id))  
df202004 <- mutate(df202004, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202005 <- mutate(df202005, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202006 <- mutate(df202006, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202007 <- mutate(df202007, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202008 <- mutate(df202008, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))
df202009 <- mutate(df202009, ride_id = as.character(ride_id), start_station_id = as.character(start_station_id, end_station_id = as.character(end_station_id)))

df202004$end_station_id <- as.character(df202004$end_station_id)
df202005$end_station_id <- as.character(df202005$end_station_id)
df202006$end_station_id <- as.character(df202006$end_station_id)
df202007$end_station_id <- as.character(df202007$end_station_id)
df202008$end_station_id <- as.character(df202008$end_station_id)
df202009$end_station_id <- as.character(df202009$end_station_id)
df202010$end_station_id <- as.character(df202010$end_station_id)
df202011$end_station_id <- as.character(df202011$end_station_id)



#combining into 1 big dataframe
all_data <- bind_rows(df202004, df202005, df202006, df202007, df202008, df202009, df202010, df202011, df202012, df202101, 
                      df202102, df202103, df202104, df202105, df202106)

#removing few columns
all_data <- all_data %>% select(-c(start_lat, start_lng, end_lat, end_lng, bike_id))

dim(all_data)

summary(all_data)


table(all_data$member_casual)

#all_trips <-  all_trips %>% 
# mutate(member_casual = recode(member_casual
#                              ,"Subscriber" = "member"
#                             ,"Customer" = "casual"))
#making column of y, m  and d
all_data$date <- as.Date(all_data$started_at)
all_data$month <- format(as.Date(all_data$date), "%m")
all_data$day <- format(as.Date(all_data$date), "%d")
all_data$weekday <- format(as.Date(all_data$date), "%A")

#Add a column as ride_length
all_data$ride_length <- difftime(all_data$ended_at, all_data$started_at)

str(all_data)
#convert ride_length column into numeric
all_data$ride_length <- as.numeric(all_data$ride_length)

#remove bad data
all_data_clean <- all_data[!(all_data$ride_length < 0),]

#CONDUCTING DESCRIPTIVE ANALYSIS
mean(all_data_clean$ride_length)
median(all_data_clean$ride_length)
max(all_data_clean$ride_length)
min(all_data_clean$ride_length)

summary(all_data_clean$ride_length)

#comparing members and casual users
aggregate(all_data_clean$ride_length ~ all_data_clean$member_casual, FUN = mean)
aggregate(all_data_clean$ride_length ~ all_data_clean$member_casual, FUN = median)
aggregate(all_data_clean$ride_length ~ all_data_clean$member_casual, FUN = max)
aggregate(all_data_clean$ride_length ~ all_data_clean$member_casual, FUN = min)

#comparing avg rides of members and casual on weekdays
aggregate(all_data_clean$ride_length ~ all_data_clean$member_casual + all_data_clean$weekday, FUN = mean)


#plotting
ggplot(data=all_data_clean, aes(x=ride_length, fill = member_casual)) + geom_histogram(bins=100) + xlim(0,7000)

ggplot(data=all_data_clean, aes(x=member_casual, fill = bikeid)) + geom_bar()

ggplot(data=all_data_clean, aes(x = ride_length, fill = member_casual)) + geom_freqpoly(bins=100) + xlim(0, 7000)

all_data_clean %>% group_by(weekday, member_casual) %>%
  summarise(number_of_rides = n(), mean_rides = mean(ride_length)) %>%
  arrange(weekday, member_casual) %>%
  ggplot(aes(x=weekday, y = mean_rides, fill = member_casual)) + geom_col(position='dodge')

all_data_clean %>% group_by(weekday, member_casual) %>%
  summarise(number_of_rides = n(), average_rides = mean(ride_length)) %>%
  arrange(member_casual, weekday) %>%
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) + geom_col(position = 'dodge')

#By looking at the plots it is clear that mean ride_length of casual member is higher than annual members and total number 
#of rides of annual members are higher than casual members.