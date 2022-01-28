exam <- read.csv("csv_exam.csv")

head(exam) # 앞에서부터 6행까지 출력

head(exam, 10) #앞에서부터 10행까지 출력

tail(exam) # 뒤에서부터 6행까지 출력

tail(exam, 10) # 뒤에서부터 10행까지 출력

# 데이터 뷰어 창에서 exam 데이터 확인
View(exam)

dim(exam) # 행, 열 출력

str(exam) # 데이터 속성 확인

summary(exam) # 요약 통계량 출력

install.packages("ggplot2")

# ggplot2의 mpg 데이터를 데이터 프레임 형태로 불러오기 
mpg <- as.data.frame(ggplot2::mpg)

head(mpg) # Raw 데이터 앞부분 확인

tail(mpg) # Raw 데이터 뒷부분 확인
View(mpg) # Raw 데이터 뷰어 창에서 확인

dim(mpg) # 행, 열 출력력

str(mpg) # 데이터 속성 확인

?mpg # mpg 설명 글 출력력

summary(mpg) # 요약 통계량 출력력
