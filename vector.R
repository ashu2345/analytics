#vector
x = c(1,2,3)
x1 = 1:10000000
x2 = seq(10,100,2)

#numeric vector----
(marks = rnorm(n=30,mean=60,sd=10))
mean(marks)
median(marks)
mode(marks)
sd(marks)
var(marks)
summary(marks)
?var

#Properties of DS----
length(marks)
range(marks)
str(marks)
class(marks)
hist(marks)
plot(density(marks))

#character vector----
(names = c('Ram','Shyam','Robin'))
summary(names)

gender = c('M','F','M')
genderF = factor(gender)
summary(genderF)
grades = c('A','B','C','D','A','D','A')
gradesF = factor(grades,ordered=T)
gradesF
summary(gradesF)

gradesF1 = factor(grades,ordered=T,levels=c('D','B','A','C'))
gradesF1
barplot(table(gradesF1))
pie(table(gradesF1))
table(gradesF1)

#logical vector----
married = c(TRUE,TRUE,FALSE,F,F,F)
married
sum(married)
table(married)
class(married)
summary(married)
barplot(table(married))
pie(table(married))

#subset of marks----
trunc(marks);round(marks,1);floor(marks);ceiling(marks)
marks1 = trunc(marks)
marks1[1:18]
marks1[-2]
marks1[c(5,10,15,20)]
mean(marks1[c(5,10,15,20)])
marks1[marks1>60 & marks1<65]
marks1 > 60

#sampling----
set.seed(1234) #Have to start from set to get same values
gender2 = sample(c('M','F'),size=1000000,replace=T,prob=c(.6,.4))
gender2
table(gender2)
prop.table(table(gender2))
