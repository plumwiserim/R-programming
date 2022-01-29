exam %>% 
  mutate(total = math + english + science) %>% # 총합 변수 추가
  head # 일부 추출

exam %>% 
  mutate(total = math + english + science, # 총합 변수 추가
         mean = (math + english + science)/3) %>% # 총평균 변수 추가
  head # 일부 추출

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% # 총합 변수 추가
  arrange(total) %>% # 총합 변수 기준 정렬
  head # 일부 추출

# 혼자서 해보기

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

mpg_new <- mpg # 복사본 만들기
mpg_new <- mpg_new %>% 
  mutate(total = cty + hwy) # 합산 변수 만들기

mpg_new <- mpg_new %>% 
  mutate(mean = total/2) # 평균 변수 만들기

mpg_new %>% 
  arrange(desc(mean)) %>% # 내림차순 정렬
  head(3) # 상위 3행 출력

mpg %>% 
  mutate(total = cty + hwy, # 합산 변수 만들기
         mean = total/2) %>% # 평균 변수 만들기
  arrange(desc(mean)) %>% # 내림차순 정렬
  head(3) # 상위 3행 출력력
