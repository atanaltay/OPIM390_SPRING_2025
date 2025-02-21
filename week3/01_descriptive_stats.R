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





