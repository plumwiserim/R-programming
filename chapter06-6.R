exam %>% summarise(mean_math = mean(math)) # math 평균 산출

exam %>% 
  group_by(class) %>% # class별로 분리
  summarise(mean_math = mean(math)) # math 평균 산출

exam %>% 
  group_by(class) %>% # class별로 분리
  summarise(mean_math = mean(math), # math 평균
            sum_math = sum(math), # math 합계
            median_math = median(math), # math 중앙값
            n = n()) # 학생 수

mpg %>% 
  group_by(manufacturer, drv) %>% # 회사별, 구동 방식별 분리
  summarise(mean_cty = mean(cty)) %>% # cty 평균 산출
  head(10) # 일부 출력

mpg %>% 
  group_by(manufacturer) %>% # 회사별로 분리
  filter(class == "suv") %>% # suv 추출
  mutate(tot = (cty+hwy)/2) %>% # 통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>% # 통합 연비 평균 산출
  arrange(desc(mean_tot)) %>% # 내림차순 정렬
  head(5) # 1~5위까지 출력력

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

mpg %>% 
  group_by(class) %>% # class별 분리
  summarise(mean_cty = mean(cty)) # cty 평균 구하기

mpg %>% 
  group_by(class) %>% # class별 분리
  summarise(mean_cty = mean(cty)) %>% # cty 평균 구하기 
  arrange(desc(mean_cty)) # 내림차순 정렬하기

mpg %>% 
  group_by(manufacturer) %>% # manufacturer별 분리
  summarise(mean_hwy = mean(hwy)) %>% # hwy 평균 구하기
  arrange(desc(mean_hwy)) %>% # 내림차순 정렬하기
  head(3) # 상위 3행 출력

mpg %>% 
  filter(class == "compact") %>% # compact 추출
  group_by(manufacturer) %>% # manufacturer별 분리
  summarise(count = n()) %>% # 빈도 구하기
  arrange(desc(count)) # 내림차순 정렬
