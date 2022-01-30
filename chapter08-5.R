ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

# 혼자서 해보기 

mpg <- as.data.frame(ggplot2::mpg)

class_mpg <- mpg %>% 
  filter(class %in% c("compact", "subcompact", "suv"))

ggplot(data = class_mpg, aes(x = class, y = cty)) + geom_boxplot()
