#install.packages("corrplot")
library(corrplot)


res <- cor(carDetails)
round(res, 4)
corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)
abline(549.8, 9.92,col="red")
plot(
  main= " Potencia m�xima vs Tama�o del motor",
  xlab="Potencia (HP)",
  ylab="Cilindraje (CC)",
  col = "dark blue",
  carDetails$max_power,carDetails$engine)

model = lm(carDetails$engine ~ carDetails$max_power)
model

