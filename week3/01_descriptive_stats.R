#Frequency distribution of categoric data

getwd()

softdrink_df = read.csv("week3/data/softdrink_r.csv")


View(softdrink_df)
head(softdrink_df)

brands_factor = as.factor(softdrink_df$Brand.Purchased)

summary(brands_factor)

#table() -> counts the values in a categoric set

table(softdrink_df$Brand.Purchased)

# plot, barplot, boxplot

barplot(table(softdrink_df$Brand.Purchased), col = "blue")

sort(table(softdrink_df$Brand.Purchased))

?sort

barplot(sort(table(softdrink_df$Brand.Purchased),decreasing = TRUE), col="red")

# relative frequency

data = table(softdrink_df$Brand.Purchased)
relative_data = data/sum(data)

relative_data

barplot(relative_data)

percent_data = relative_data*100
percent_data

# Distributions of Continuous data

df = read.csv("week3/data/startingsalaries_r.csv")
View(df)

monthly_salary <-df$Monthly.Starting.Salary....

summary(monthly_salary)

#summary(df)

fivenum(monthly_salary) #min - q1  Median q3 Max

# calculate percentiles and Quantiles

quantile(monthly_salary, .25)

quantile(monthly_salary, probs = seq(0, 1, 1/4))

str(monthly_salary) # sturcture of data

sd(monthly_salary) #stdev

mean(monthly_salary)


median(monthly_salary)

range(monthly_salary)

#histogram  # increase the bins -> increasing the resolution histogram
hist(monthly_salary,breaks = 30,col="blue")

# divide monthly salary into ranges [5700 - 5800) - [5800 - 5900)

?cut

df$salary_group <- cut(df$Monthly.Starting.Salary....,
                       breaks = c(5700, 5800, 5900, 6000, 6100, 6200,6300),
                       include.lowest = T,
                       right = F,dig.lab=5)
df$salary_group

barplot(table(df$salary_group))


boxplot(monthly_salary, xlab="Monthly Starting Salary")

#outliers

# with z transformation

df$Salary_z = (df$Monthly.Starting.Salary.... - mean(df$Monthly.Starting.Salary....))/sd(df$Monthly.Starting.Salary....)


df$Salary_z

scale(df$Monthly.Starting.Salary....)


scale(df$Monthly.Starting.Salary....) == df$Salary_z 

View(df[df$Salary_z>2,])

# with IQR

quantile(df$Monthly.Starting.Salary....)

# Calculate lower and upper bounds
iqr <- IQR(df$Monthly.Starting.Salary....)
lower_bound <- quantile(df$Monthly.Starting.Salary...., probs = 0.25) - 1.5 * iqr
upper_bound <- quantile(df$Monthly.Starting.Salary...., probs = 0.75) + 1.5 * iqr

# Find outliers
View(df[df$Monthly.Starting.Salary.... < lower_bound,])

View(df[df$Monthly.Starting.Salary.... > upper_bound,])



####Bivariate Analysis##


#Creates comparative boxplots for the Starting Salary data by majors
# categoric to numerical variable relations 
major_salaries_df <- read.csv("week3/data/majorsalaries_r.csv")
View(major_salaries_df)
boxplot(Monthly.Starting.Salary.... ~ Major,
        data = major_salaries_df,
        xlab = "Business Major",
        ylab = "Monthly Starting Salary ($)")


#Covariance - Correlation - scatter plot

electronics_df <- read.csv("week3/data/electronics_r.csv") #Reads in CSV file Electronics.csv as a data frame

View(electronics_df)

number_commericals <- electronics_df$No..of.Commercials  #Reads in column of data from electronics_df as data object number_commercials
sales_volume <- electronics_df$Sales.Volume #Reads in column of data from electronics_df as data object sales_volume
cov(number_commericals, sales_volume) #Calculates covariance of number_commercials and sales_volume variables
cor(number_commericals, sales_volume) #Calculates correlation coefficient of number_commercials and sales_volume variables

head(electronics_df)
#line and scatter plots

plot(electronics_df$No..of.Commercials,electronics_df$Sales.Volume,type = "p")
















































