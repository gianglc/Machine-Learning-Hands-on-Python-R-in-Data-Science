Here is my daily log about what I have learned through the Machine Learning course (you can see as the secret Machine Learning notebook)

# Day 1: Preprocessing Data
Preprocessing is the beginning and important step before you want to dig into the dataset. So what is the preprocessing? 

Let's think about your messing room. Your friend will come to visit you on Saturday so you need to clean up your room as soon as possible to welcome your room. Cleaning your room is the preprocessing.
In order to have to nice datasets to build the machine learning model, you need to import the datasets (of course), dealing with missing data, and feature scaling the continuous predictors.

We will use both Python and R to preprocess the data.

1. Python
- Use pd.read_csv to import the dataset
- Use fillna to replace the missing data by other variables
- From sklearn.model_selection import train_test_split to split the data into training and test sets
- From sklearn.preprocessing import StandardScaler to feature scaling the continuous predictors

2. R
- Use read.csv to import the dataset (remember the set the correct directory first)
- Use the ifelse function to replace the missing data by other variables
- Use sample.split function to split into the training, test sets (this function will return TRUE or FALSE)
- Then you have to use subset function to get the training and test sets
- Use scale function to feature scaling the continuous predictors

This my day 1 for Machine Learning course! Let's get something fun in Day 2!
