outlier <- data.frame(sex = c(1, 2, 1, 3, 2, 1), 
                      score = c(5, 4, 3, 4, 2, 6))
outlier

table(outlier$sex)
table(outlier$score)

# sex가 3이면 NA 할당
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

# score가 5보다 크면 NA 할당
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score) 
outlier

outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))

boxplot(mpg$hwy)

boxplot(mpg$hwy)$stats # 상자 그림 통계치 출력

# 12~37 벗어나면 NA 할당
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy, na.rm = T))

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
mpg[c(10, 14, 58, 93), "drv"] <- "k" # drv 이상치 할당
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42) # cty 이상치 할당

# 이상치 확인
table(mpg$drv) 
# drv가 4, f, r이면 기존 값 유지, 그 외 NA 할당
mpg$drv <- ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA)
# drv가 k이면 NA 할당, 그 외 기존 값 유지
mpg$drv <- ifelse(mpg$drv == "k", NA, mpg$drv) 
# 이상치 확인
table(mpg$drv)

# 상자 그림 생성 및 통계치 산출
boxplot(mpg$cty)$stats
# 9~26 벗어나면 NA 할당
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
# 상자 그림 생성
boxplot(mpg$cty)

mpg %>% 
  filter(!is.na(drv) & !is.na(cty)) %>% # 결측치 제외
  group_by(drv) %>% # drv별 분리
  summarise(mean_cty = mean(cty)) # cty 평균 구하기기
