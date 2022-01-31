# https://blog.naver.com/dbstnsehf/222605897919
# https://minimax95.tistory.com/entry/KoNLP-%ED%8C%A8%ED%82%A4%EC%A7%80-%EC%84%A4%EC%B9%98-%EC%98%A4%EB%A5%98-%ED%95%B4%EA%B2%B0-%EB%B0%A9%EB%B2%95

install.packages("rJava")
install.packages("memoise")
install.packages("multilinguer") # error

install.packages("remotes")
remotes::install_gitlab("mrchypark/multilinguer")

# KoNLP 의존성 패키지 설치하기 
install.packages(c('stringr', 'hash', 'tau', 'Sejong', 'RSQLite', 'devtools'), type = "binary")

# KoNLP 패키지 설치하기
remotes::install_github('haven-jeon/KoNLP',upgrade="never",INSTALL_opts=c("--no-multiarch"), force = T)

library(multilinguer)
install_jdk()

library(KoNLP)

useNIADic()

# 데이터 불러오기
txt <- readLines("hiphop.txt")
head(txt)

install.packages("stringr")
library(stringr)

# 특수문자 제거
txt <- str_replace_all(txt, "\\W", " ")

extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

# 가사에서 명사 추출
nouns <- extractNoun(txt)

# 추출한 명사 list를 문자열 벡터로 변환, 단어별 빈도표 생성
wordcount <- table(unlist(nouns))

# 데이터 프레임으로 변환
df_word <- as.data.frame(wordcount, stringAsFactors = F)

library(dplyr)

# 변수명 수정
df_word <- rename(df_word, word = Var1, freq = Freq)

# 두 글자 이상 단어 추출
df_word <- filter(df_word, nchar(word) >= 2)

rlang::last_error()
rlang::last_trace()
