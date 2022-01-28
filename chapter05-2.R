df_raw <- data.frame(var1 = c(1, 2, 1), 
                     var2 = c(2, 3, 2))
df_raw

install.packages("dplyr") # dplyr 설치
library(dplyr) # dplyr 로드

df_new <- df_raw # 복사본 생성
df_new

df_new <- rename(df_new, v2 = var2)
df_new

df_raw
df_new

# 혼자서 해보기 

library(ggplot2)
library(dplyr)

mpg_raw <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
mpg_new <- mpg_raw # 복사본 만들기

mpg_new <- rename(mpg_new, city = cty) # cty를 city로 수정
mpg_new <- rename(mpg_new, highway = hwy) # hwy를 highway로 수정

head(mpg_new) # 데이터 일부 출력
