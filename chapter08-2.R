library(ggplot2)

mpg <- mpg 

# x축은 displ, y축은 hwy로 지정해 배경 생성
ggplot(data = mpg, aes(x = displ, y = hwy))

# 배경에 산점도 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# x축 범위 3~6으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point() + xlim(3, 6)

# x축 범위 3~6, y축 범위 10~30으로 지정
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  xlim(3, 6) + 
  ylim(10, 30)

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()

midwest <- as.data.frame(ggplot2::midwest) # midwest 데이터 불러오기기
ggplot(data = midwest, aes(x = poptotal, y = popasian)) + 
  geom_point() +
  xlim(0, 500000) +
  ylim(0, 10000)
