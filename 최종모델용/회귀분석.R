
library(readr)
youth_mall <- read_csv("C:/최종모델용/youth_mall.csv")

z1<-youth_mall[,-c(1,2,4,8,9)]

#다중 회귀 분석 
temp<-lm(z1$sales_per_store~z1$Bus_st_num+z1$Ur_rail_nu+z1$store_num+z1$Bus_te_num+z1$spot_num_3+factor(z1$univ_num_1)+
           factor(z1$ur_park_num)+z1$parking_num+factor(z1$Cul_hall_n)+factor(z1$Mart_num_1)+z1$parking_car_num, data= z1)
step(temp)
summary(temp)
