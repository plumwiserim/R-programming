var1 <- c(1, 2, 3, 1, 2) # numeric 변수 생성
var2 <- factor(c(1, 2, 3, 1, 2)) # factor 변수 생성

var1 # numeric 변수 출력
var2 # factor 변수 출력

var1+2 # numeric 변수로 연산
var2+2 # factor 변수로 연산

class(var1)
class(var2)

levels(var1)
levels(var2)

var3 <- c("a", "b", "b", "c") # 문자 변수 생성
var4 <- factor(c("a", "b", "b", "c")) # 문자로 된 factor 변수 생성

var3
var4

class(var3)
class(var4)

mean(var1)
mean(var2)

var2 <- as.numeric(var2) # numeric 타입으로 변환
mean(var2) # 함수 재적용

class(var2) # 타입 확인
levels(var2) # 범주 확인

# 혼자서 해보기

class(mpg$drv) # 타입 확인

mpg$drv <- as.factor(mpg$drv) # factor로 변환
class(mpg$drv) # 타입 확인

levels(mpg$drv) # 범주 확인
