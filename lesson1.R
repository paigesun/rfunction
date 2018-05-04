# this is how i take notes 
3
# addition 
3+4
# pwd where am i now on my comp
getwd()
# cd
setwd("~/Desktop/workshop/data/")
getwd()
# ls
list.files()
ls()
read.csv(file = "inflammation-01.csv", header = FALSE)
?read.csv()

# variables
3
a <- 3
a +5

weight_kg <- 55
weight_kg
weight_kg*2.2

weight_kg <- 57.5
weight_kg
weight_kg*2.2
weight_lb <- weight_kg*2.2
weight_lb

weight <- 100
weight <- 100
weight_lb <- weight_kg*2.2
weight_lb

dat <- read.csv(file = "inflammation-01.csv", header = FALSE)
dat
head(dat)
class(dat)
# dimensions of data frame
dim(dat)
# calling specific cell, top left
dat[1,1]
dat[30, 20]

#c combine 
c(1,2,3)
# rows 10, 20
dat[c(1,3,5), c(10,20)]

#series of numbers is colon, numbers 1-5
1:5
# first four rows, first ten columns
dat[1:4 , 1:10]
dat[5:12 , 1:10]

dat[1,]
dat[,2]
# all rows, columns 16-19
dat[,16:19]
dat [,]

# call first row/patient , data point/day in study
dat[1,]
#find max infl
max(dat[1,])
# naming this max as patient 1
patient_1 <- dat[1]
max(patient_1)

# min inf on day 7 total
min(dat[,7])

mean(dat[,7])
median(dat[,7])
sd(dat[,7])

# summary of specific days, with all the mins and maxs
summary(dat)
# mean of specific days - day 1 here
mean(dat[,1])

# mean of every row
apply(dat, 1, mean)
# mean of every column
apply(dat, 2, mean)
# list of numbers, lets you save it to one name
a <- c(1,2,3)
a
a*3
#save letter m with apostrophes
animal <- c('m','o','n','k','e','y')
animal
# range, 1 through 3
animal[1:3]
animal[6:4]
animal[-1]

head(dat)

apply(dat, 2, mean)
avg_day_inflammation <- apply(dat, 2, mean)

plot(avg_day_inflammation)

max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)

min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)

mean(dat[2,])
mean(dat[,2])

class(dat)
class(dat[2,])
class(dat[,2])

mean(as.integer(dat[2,]))

sd_day_inflammation <-apply(dat, 2, sd)
plot(sd_day_inflammation)
