df <- data.frame(var1 = c(4, 3, 8), 
                 var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2 # var_sum 파생변수 생성
df

df$var_mean <- (df$var1 + df$var2)/2 # var_mean 파생변수 생성
df

mpg$total <- (mpg$cty + mpg$hwy)/2 # 통합 연비 변수 생성
head(mpg)

mean(mpg$total)

summary(mpg$total)

hist(mpg$total)

# 20 이상이면 pass, 그렇지 않으면 fail 부여
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20) # 데이터 확인

table(mpg$test) # 연비 합격 빈도ㅛ 생성성

library(ggplot2) # ggplot2 로드
qplot(mpg$test)

# total을 기준으로 A, B, C 등급 부여
mpg$grade <- ifelse(mpg$total >= 30, "A", 
                    ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20) # 데이터 확인

table(mpg$grade) # 등급 빈도표 생성성
qplot(mpg$grade) # 등급 빈도 막대 그래프 생성성

# A, B, C, D 등급 부여
mpg$grade2 <- ifelse(mpg$total >= 30, "A", 
                     ifelse(mpg$total <= 25, "B", 
                            ifelse(mpg$total >= 20, "C", "D")))
