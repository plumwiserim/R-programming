install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx") # 엑셀 파일을 불러와 df_exam에 할당
df_exam # 출력

df_exam <- read_excel("c:/Users/LEE/Desktop/git/R-programming/excel_exam.xlsx")

mean(df_exam$english)
mean(df_exam$science)

df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

# 엑셀 파일의 세 번째 시트에 있는 데이터 불러오기
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)

df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam

df_midterm <- data.frame(english = c(90, 80, 60, 70), 
                         math = c(50, 60, 100, 20), 
                         class = c(1, 1, 2, 2))
df_midterm

write.csv(df_midterm, file = "df_midterm.csv")

saveRDS(df_midterm, file = "df_midterm.rds")

rm(df_midterm)
df_midterm

df_midterm <- readRDS("df_midterm.rds")
df_midterm
