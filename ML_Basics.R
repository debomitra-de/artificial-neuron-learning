#time series analysis
# Sample time series data
# Assuming you have a time series dataset in a data frame with columns 'date' and 'temperature'
data <- read.csv("C:/Users/debom/OneDrive/Desktop/SEM 6/Big Data Analytics/weather_data.csv")
head(data)
# Install and load necessary libraries
install.packages("forecast")
library(forecast)

# Create a time series object
ts_data <- ts(data$temperature, frequency = 12) 
# Assuming monthly data
# Fit a forecasting model (e.g., ARIMA)
forecast_model <- auto.arima(ts_data)
# Forecast for the next 12 months
forecast_result <- forecast(forecast_model, h = 12)
# Print the forecasted values
print(forecast_result)

#logistic regression
# Sample data
data <- data.frame(
 outcome = c(0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
 predictor = c(23, 45, 21, 33, 67, 34, 56, 29, 40, 50)
)
# Logistic regression model
logistic_model <- glm(outcome ~ predictor, data = data, family = binomial)
# Summary of the model
summary(logistic_model)

#linear regression
# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 1, 3, 5)
# Linear regression model
linear_model <- lm(y ~ x)
# Summary of the model
summary(linear_model)

