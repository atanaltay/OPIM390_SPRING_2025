#Create dataframe from scratch
gender = factor(sample(c("Male","Female"),30,replace = TRUE))
age = sample(20:89,30,replace=TRUE)
income = rnorm(30,mean=1000,sd=500)
credit = ifelse(age>30 & income>1100,1,0)
credit

df = data.frame(gender=gender,age=age,income=income,credit=credit)

head(df)
names(df)
View(df)

# field selection

#multi column selection
df[,c("gender","age")]

df$gender
df$age

#row selection /filter

df[(df$gender=="Male") & (df$age>30),]

df[(df$gender=="Male") & (df$age>30),c("gender")]

new_df = df[(df$gender=="Male") & (df$age>30),c("age","income")]
View(new_df)


suv_df <- read.csv("week1/data/compact_suv_r.csv") #Reads in the CSV file CompactSUV.csv into a data frame in R
head(suv_df)
tail(suv_df)
View(suv_df) #Displays the data frame

str(suv_df) #Displays a summary of the columns in the data frame

names(suv_df)

suv_df$Owner.Satisfaction
class(suv_df$Owner.Satisfaction)

suv_df$Owner.Satisfaction <- ordered(suv_df$Owner.Satisfaction, levels=c("D","C","B","A")) 
#Extracts a column of the data frame and converts to an ordered type
#levels are in increasing order
levels(suv_df$Owner.Satisfaction)

#indexing

suv_df$Owner.Satisfaction  #Extracts specific column from data frame; displays values and levels since this is ordered variable
class(suv_df$Owner.Satisfaction)  #Displays class of variable from column Owner.Satisfaction


entry73 <- suv_df[7,3] #Stores the entry in row 7, column 3 of data frame as data object named entry73
entry73
class(entry73) #Identifies class of data object entry73
row7 <- suv_df[7,] #Row 7 of suv_df is stored in data object named row7
row7
class(row7) #Identifies class of data object row7
col3 <- suv_df[,3] #Column 3 of suv_df is stored in data object named col3
col3
class(col3) #Identifies class of data object col3

#select multiple columns


sub_df <- suv_df[c(1:5),c(1:3,6)]  #Creates a new data frame from first five rows and columns 1, 2, 3 and 6
sub_df  #Display summary of data frame

rec_df <- subset(suv_df, Recommended == "Yes" & (Overall.Miles.Per.Gallon > 25 | Owner.Satisfaction == "A")) #Creates new data frame based on logical arguments

suv_df$NewRec <- suv_df$Recommended

suv_df$NewRec

slow_rows <- which(suv_df$Acceleration..0.60..Sec > 9)  #s rows that satisfy stated condition
slow_rows  #Displays extracted rows

#column operations

suv_df$high_satisfaction <- ifelse(suv_df$Owner.Satisfaction=="A",1,0)
suv_df

suv_df[suv_df$Overall.Score==  min(suv_df$Overall.Score),]

suv_df[suv_df$Overall.Score==  max(suv_df$Overall.Score),]


suv_df$Recommended <- NULL #Deletes original variable Recommended
View(suv_df)  #Displays the updated data frame
summary(suv_df)  #Displays a statistical summary of the data frame

#Read and write csv, excel....

recom_df = suv_df[suv_df$Recommended=="Yes",]
View(recom_df)

write.csv(recom_df,"recommended.csv")
#install readxl package writexl

install.packages("readxl")
install.packages("writexl")

library(readxl)
library(writexl)

write_xlsx(recom_df,"test.xlsx")
dfex = read_excel("test.xlsx")
View(dfex)

names(suv_df)
suv_df[,c("Make","Model")]


