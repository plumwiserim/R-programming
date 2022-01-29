library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

# exam에서 class가 1인 경우만 추출해 출력
exam %>% filter(class == 1)

# 2반인 경우만 추출
exam %>% filter(class == 2)

exam %>% filter(class != 1) # 1반이 아닌 경우
exam %>% filter(class != 3) # 3반이 아닌 경우

exam %>% filter(math > 50) # 수학 점수가 50점을 초과한 경우
exam %>% filter(math < 50) # 수학 점수가 50점 미만인 경우
exam %>% filter(english >= 80) # 영어 점수가 80점 이상인 경우
exam %>% filter(english <= 80) # 영어 점수가 80점 이하인 경우

# 1반이면서 수학 점수가 50점 이상인 경우
exam %>% filter(class == 1 & math >= 50)
# 2반이면서 영어 점수가 80점 이상인 경우
exam %>% filter(class == 2 & english >= 80)

# 수학 점수가 90점 이상이거나 영어 점수가 90점 이상인 경우
exam %>% filter(math >= 90 | english >= 90)
# 영어 점수가 90점 미만이거나 과학 점수가 50점 미만인 경우
exam %>% filter(english < 90 | science < 50)

# 1, 3, 5반에 해당하면 추출
exam %>% filter(class == 1 | class == 3 | class == 5)

exam %>% filter(class %in% c(1, 3, 5)) # 1, 3, 5반에 해당하면 추출

class1 <- exam %>% filter(class == 1) # class가 1인 행 추출, class1에 할당
class2 <- exam %>% filter(class == 2) # class가 2인 행 추출, class2에 할당
mean(class1$math) # 1반 수학 점수 평균 구하기기
mean(class2$math) # 2반 수학 점수 평균 구하기

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

mpg1 <- mpg %>% filter(displ <= 4) # displ 4 이하 추출
mpg2 <- mpg %>% filter(displ >= 5) # displ 5 이상 추출
mean(mpg1$hwy) # displ 4 이하 hwy 평균
mean(mpg2$hwy) # displ 5 이상 hwy 평균

mpg_audi <- mpg %>% filter(manufacturer == "audi") # audi 추출
mpg_toyota <- mpg %>% filter(manufacturer == "toyota") # toyota 추출
mean(mpg_audi$cty) # audi의 cty 평균
mean(mpg_toyota$cty) # toyota의 cty 평균

# manufacturer가 chevrolet, ford, honda에 해당하면 추출
mpg_cfh <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda")) 
mean(mpg_cfh$hwy)
