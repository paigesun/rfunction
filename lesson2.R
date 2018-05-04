# intro to part 2
# r will always return the last value at the end of the function, best practice, always add the return line so you know what it will give you 
fahrenheit_to_kelvin <- function(temp_F) {
  temp_K <- ((temp_F - 32) * (5 / 9)) + 273.15
  return(temp_K)
}

fahrenheit_to_kelvin(100)

kelvin_to_celsius <- function(temp_K) {
  temp_C <- temp_K - 273.15
  return(temp_C)
}

kelvin_to_celsius(0)
temp_C

fahrenheit_to_celsius <- function(temp_F) {
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_C <- kelvin_to_celsius(temp_K)
  return(temp_C)
}
fahrenheit_to_celsius(100)

sentence <- c("write", "programs", "for", "people", "not", "computers")
  
asterisk <-  "***"
fence <-  function(sentence, wrapper){
  answer <- c(wrapper, sentence, wrapper)
  return(answer)
}

fence(sentence, asterisk)

center <- function(data, desired) {
  new_data <- (data - mean(data)) + desired
  return(new_data)
}

z <-  c(0,0,0,0)

center(z, 3)


dat <- read.csv(file="inflammation-01.csv", header=FALSE)
centered <- center(dat[,4], 0)

min(dat[,4])
min(centered)
max(dat[,4])
max(centered)
mean(dat[,4])
mean(centered)

sd(dat[,4])
sd(centered)

all.equal(sd(dat[,4]), sd(centered), )
?all.equal

dat <- read.csv("inflammation-01.csv", TRUE)

center <-  function(data, desired=0) {
  new_data <- (data - mean(data)) + desired
return(new_data)
}
rescale <- c("3","2","5","7")  
return()
# exercise that didn't make sense 
rescale <- function(V){
  L <-  min(V)
  H <- max(V)
  result <- (V-L)/(H-L)
  return(result)
}
rescale(c(3,2,5,7))

