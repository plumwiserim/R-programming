english <- c(90, 80, 60, 70) # 영어 점수 변수 생성성
english
math <- c(50, 60, 100, 20) # 수학 점수 변수 생성성
math

# english, math로 데이터 프레임 생성해서 df_midterm에 할당
df_midterm <- data.frame(english, math)
df_midterm

class <- c(1, 1, 2, 2)
class
df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)
mean(df_midterm$math)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20), 
                         class = c(1, 1, 2, 2))
df_midterm

# 혼자서 해보기 
# 데이터 프레임 만들기
sales <- data.frame(fruit = c("사과", "딸기", "수박"), 
                   price = c(1800, 1500, 3000), 
                   volume = c(24, 38, 13))
# 데이터 프레임 출력하기
sales

mean_price = mean(sales$price) # 가격 평균
mean_price
mean_volume = mean(sales$volume) # 판매량 평균
mean_volume
