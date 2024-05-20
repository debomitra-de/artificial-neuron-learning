# Read the data from CSV file
df <- read.csv('C:/Users/debom/OneDrive/Desktop/SEM 5/CSE313 ML/Datasets/breast-cancer.csv')

# Remove rows with missing values
df <- na.omit(df)
head(df,5)
# Encode the 'diagnosis' column using ordinal encoding
df$diagnosis <- as.numeric(factor(df$diagnosis, levels = c(0,1)))

head(df,5)
# Split the data into predictors (x) and target variable (y)
x <- df[, -col(diagnosis)]
y <- df$diagnosis

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
accuracy <- sum(binary_predictions == y_test) / length(y_test)
accuracy
