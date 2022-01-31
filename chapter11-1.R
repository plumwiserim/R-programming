install.packages("mapproj")
install.packages("ggiraphExtra")
library(ggiraphExtra)

str(USArrests)
head(USArrests)

library(tibble)
crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)
str(crime)

install.packages("maps")
library(ggplot2)
states_map <- map_data("state")
str(states_map)

ggChoropleth(data = crime, # 지도에 표현할 데이터
             aes(fill = Murder, # 색깔로 표현할 변수
                 map_id = state), # 지역 기준 변수
             map = states_map) # 지도 데이터

ggChoropleth(data = crime, # 지도에 표현할 데이터 
             aes(fill = Murder, # 색깔로 표현할 변수 
                 map_id = state), # 지역 기준 변수 
             map = states_map, # 지도 데이터 
             interactive = T) # 인터랙티브브
