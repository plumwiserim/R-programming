install.packages("dygraphs")
library(dygraphs)

economics <- ggplot2::economics
head(economics)

library(xts)
eco <- xts(economics$unemploy, order.by = economics$date)
head(eco)

dygraph(eco) # 그래프 생성

dygraph(eco) %>% dyRangeSelector() # 날짜 범위 선택 기능 추가


# 저축률
eco_a <- xts(economics$psavert, order.by = economics$date)
# 실업자 수 
eco_b <- xts(economics$unemploy/1000, order.by = economics$date)

eco2 <- cbind(eco_a, eco_b) # 데이터 결합
head(eco2)
colnames(eco2) <- c("psavert", "unemploy") # 변수명 바꾸기
head(eco2)

dygraph(eco2) %>% dyRangeSelector()
