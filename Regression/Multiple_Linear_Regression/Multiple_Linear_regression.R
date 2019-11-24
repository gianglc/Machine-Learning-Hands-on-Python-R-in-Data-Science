# Multiple Linear Regression

# Import the dataset
dataset = read.csv("50_Startups.csv")

# Encode the categorical variable
dataset$State = factor(dataset$State, levels = c('New York', 'California', 'Florida'), labels = c(1,2, 3))

# Splitting the training set and test set
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression to Training set
regressor = lm(formula = Profit ~ ., data = training_set)
summary(regressor)

# Manual Backward Elimination
regressor1 = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, data = training_set)
summary(regressor1)

regressor2 =  lm(formula = Profit ~ R.D.Spend  + Marketing.Spend, data = training_set)
summary(regressor2)

# Automatic Backward Elimination
library(MASS)
regressor_final = stepAIC(regressor, direction = 'both')
summary(regressor_final)
