
price <- 100

if(price<100){
  print("<100")
}else{
  print(">100")
}

quantity <- c(1,1,2,1,2)
quantity
ifelse(quantity == 1, 'Yes', 'No')

#la condicicon tiene longitud
price <- c(58,100,110)
if(price<100){
  print("<100")
}else if(price == 100){
  print("=100")
}else{
  print(">100")
}

price <- c(58,100,110)
if(all(price<100)){
  print("todos <100")
}

price <- c(58,100,110)
if(any(price<100)){
  print("alguno <100")
}

days <- function(x){
  switch(x,
         Mon = "Monday",
         Tue = "Tuesday",
         Wed = "Wednesday",
         Thu = "Thursday",
         Fri = "Friday",
         "Weekend")
}

days("Mon")
days(6)

quantity <- c(1,2,3,4,5,6)
avg_qty <- function(qty, type){
  switch(type,
         arithmetic = mean(quantity),
         geometric = prod(quantity)^(1/length(quantity)))
}
avg_qty(quantity, "arithmetic")
avg_qty(quantity, "geometric")


cart <- c("apple", "cookie", "lemon")
for(product in cart){
  print(product)
}


price_discounted <- (1)
price <- c(30,120,50,70,150,100,50,25,110)
for(i in 1:length(price)){
  price_discounted[i] <- price[i] -price[i] * 0.1
  print(price_discounted[i])
}

index <- 1
while(index < 3){
  print(paste("Index is ", index))
  index <- index + 1
}

x <- 1
repeat{
  print(x)
  x <- x + 1
  if(x == 3){
    break
  }
}

setwd("C:\\Users\\CC7\\Downloads")
maraton <- read.csv("maraton_ny.csv",
                    header = TRUE,
                    row.names = 1,
                    sep = ",",
                    dec = ".")

View(maraton) #Vistas en tabla
class(maraton) #tipo de dato
dim(maraton) #data frame
names(maraton) #cabezeras
str(maraton) #estructura de la variable
nrow(maraton) #col y row
install.packages("dplyr") ##instalar librerias
library("dplyr") #usar una libreria
glimpse(maraton) #categorias y datos == str
summary(maraton) #resume datos del archivo