# Read the data from CSV file
df <- read.csv('C:/Users/debom/OneDrive/Desktop/SEM 6/Big Data Analytics/malaria.csv')
# Remove rows with missing values
df <- na.omit(df)
head(df,5)

# Check the column names
col_names <- names(df)

# Split the data into predictors (x) and target variable (y)
x <- df[, -which(col_names == "Malaria_Diagnosis")]
y <- df$Malaria_Diagnosis


head(x,5)
# Standardize the data
scaled_data <- scale(x)

# Convert the scaled data back to a data frame
x <- as.data.frame(scaled_data)

# Split the data into training and testing sets
set.seed(123)  # for reproducibility
train_index <- sample(1:nrow(df), 0.7 * nrow(df))  # 70% train, 30% test
x_train <- x[train_index, ]
y_train <- y[train_index]
x_test <- x[-train_index, ]
y_test <- y[-train_index]

# Train the logistic regression model
model <- glm(y_train ~ ., data = cbind(y_train, x_train), family = binomial)

# Make predictions on the test data
predictions <- predict(model, newdata = cbind(y_test, x_test), type = "response")

# Convert predictions to binary (0/1)
binary_predictions <- ifelse(predictions > 0.5, 1, 0)

# Calculate accuracy
accuracy_lr <- sum(binary_predictions == y_test) / length(y_test)
accuracy_lr

#Train the decision tree model
# Install the party package 
install.packages("party")

# Load the party package
library(party)
# Create and train decision tree model
tree_model <- ctree(y_train ~., data = cbind(y_train, x_train))


# Make predictions on test data
predictions_dt <- predict(tree_model, newdata = x_test, type = "response")

# Convert predictions to binary (0/1)
binary_predictions_dt <- ifelse(predictions_dt > 0.5, 1, 0)

# Calculate accuracy
accuracy_tree <- sum(binary_predictions_dt == y_test) / length(y_test)
accuracy_tree

plot(tree_model)