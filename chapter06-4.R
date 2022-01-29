exam %>% arrange(math) # math 오름차순 정렬

exam %>% arrange(desc(math)) # math 내림차순 정렬

exam %>% arrange(class, math) # class 및 math 오름차순 정렬

# 혼자서 해보기 

mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기

mpg %>% 
  filter(manufacturer == "audi") %>% # audi 추출
  arrange(desc(hwy)) %>% # hwy 내림차순 정렬
  head(5) # 5행까지 출력력
