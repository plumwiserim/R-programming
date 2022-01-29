exam %>% select(math) # math 추출

exam %>% select(english) # english 추출

exam %>% select(class, math, english) # class, math, english 변수 추출

exam %>% select(-math) # math 제외

exam %>% select(-math, -english) # math, english 제외

# class가 1인 행만 추출한 다음 english 추출
exam %>% filter(class == 1) %>% select(english)

exam %>% 
  filter(class == 1) %>% # class가 1인 행 추출
  select(english) # english 추출

exam %>% 
  select(id, math) %>% # id, math 추출
  head # 앞부분 6행까지 추출출

exam %>% 
  select(id, math) %>% # id, math 추출
  head(10) # 앞부분 10행까지 추출

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

df <- mpg %>% select(class, cty) %>%  # class, cty 변수 추출
head(df) # df 일부 출력

df_suv <- mpg %>% filter(class == "suv") # class가 suv인 행 추출
df_compact <- mpg %>% filter(class == "compact") # class가 compact인 행 추출

mean(df_suv$cty) # suv의 cty 평균
mean(df_compact$cty) # compact의 cty 평균
