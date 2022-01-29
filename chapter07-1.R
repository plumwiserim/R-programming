df <- data.frame(sex = c("M", "F", NA, "M", "F"), 
                 score = c(5, 4, 3, 4, NA))
df

is.na(df) # 결측치 확인

table(is.na(df)) # 결측치 빈도 출력

table(is.na(df$sex)) # sex 결측치 빈도 출력
table(is.na(df$score)) # score 결측치 빈도 출력

mean(df$score) # 평균 산출
sum(df$score) # 합계 산출

library(dplyr) # dplyr 패키지 로드
df %>% filter(is.na(score)) # score가 NA인 데이터만 출력

df %>% filter(!is.na(score)) # 결측치 제거 

df_nomiss <- df %>% filter(!is.na(score)) # score 결측치 제거 
mean(df_nomiss$score) # score 평균 산출
sum(df_nomiss$score) # score 합계 산출 

df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex)) # score, sex 결측치 제거 
df_nomiss # 출력력

df_nomiss2 <- na.omit(df) # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2 # 출력

mean(df$score, na.rm = T) # 결측치 제외하고 평균 산출
sum(df$score, na.rm = T) # 결측치 제외하고 합계 산출

exam <- read.csv("csv_exam.csv") # 데이터 불러오기
exam[c(3, 8, 15), "math"] <- NA # 3, 8, 15행의 math에 NA 할당
exam

exam %>% summarise(mean_math = mean(math)) # math 평균 산출

# math 결측치 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))

exam %>% summarise(mean_math = mean(math, na.rm = T), # 평균 산출
                   sum_math = sum(math, na.rm = T), #합계 산출
                   median_math = median(math, na.rm = T)) # 중앙값 산출

mean(exam$math, na.rm = T) # 결측치 제외하고 math 평균 산출

exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math가 NA면 55로 대체
table(is.na(exam$math)) #결측치 빈도표 생성
exam # 출력

mean(exam$math) # math 평균 산출

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA # NA 할당하기

table(is.na(mpg$drv)) # drv 결측치 빈도표 출력
table(is.na(mpg$hwy)) # hwy 결측치 빈도표 출력

mpg %>% 
  filter(!is.na(mpg$hwy)) %>% # 결측치 제외 
  group_by(drv) %>% # drv별 분리
  summarise(mean_hwy = mean(hwy)) # hwy 평균 구하기
