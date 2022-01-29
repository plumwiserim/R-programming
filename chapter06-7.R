# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5), 
                    midterm = c(60, 80, 70, 90, 85))
# 기말고사 데이터 생성
test2 <- data.frame(id = c(1, 2, 3, 4, 5), 
                    final = c(70, 83, 65, 95, 80))

test1 # test1 출력
test2 # test2 출력

total <- left_join(test1, test2, by = "id") # id를 기준으로 합쳐 total에 할당
total # total 출력

name <- data.frame(class = c(1, 2, 3, 4, 5), 
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam_new <- left_join(exam, name, by = "class")
exam_new

# 학생 1~5번 시험 데이터 생성
group_a <- data.frame(id = c(1, 2, 3, 4, 5), 
                      test = c(60, 80, 70, 90, 85))
# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6, 7, 8, 9, 10), 
                      test = c(70, 83, 65, 95, 80))

group_a # group_a 출력
group_b # group_b 출력

group_all <- bind_rows(group_a, group_b) # 데이터 합쳐서 group_all에 할당
group_all # group_all 출력

# 혼자서 해보기

fuel <- data.frame(fl = c("c", "d", "e", "p", "r"), 
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22))
fuel # 출력

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

mpg <- left_join(mpg, fuel, by = "fl") # mpg에 연료 가격 변수 추가

mpg %>%
  select(model, fl, price_fl) %>% # model, fl, price_fl 추출
  head(5) # 앞부분 일부 출력
