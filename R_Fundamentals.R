#R programming fundamentals
# Add two numbers
addition <- 5 + 3
print(addition)

# Subtract two numbers
subtraction <- 5 - 3
print(subtraction)

# Multiply two numbers
multiplication <- 5 * 3
print(multiplication)

# Raise a number to a power
power <- 5 ^ 3
print(power)


# Compute the square root of a number
sqrt_value <- sqrt(16)
print(sqrt_value)

#Use of Brackets
(1 + 2) * 4 

#storing value on a variable
sales <- 350

#doing calculation using variables
royalty <- 43
sales * royalty

#using functions
abs( -21 )

#Function arguments, their names and their defaults
round( 3.1415 )

round( 3.14165, 2 )

round( x = 3.1415, digits = 2 )

#creating a vector
sales.by.month <- c(0, 100, 200, 50, 0, 0, 0, 0, 0, 0, 0, 0)
sales.by.month

#getting info out of a vector
sales.by.month[2]

february.sales <- sales.by.month[2]
february.sales

#altering elements of a vectorsales.by.month[5] <- 25
sales.by.month

#other useful functions
length( x = sales.by.month )

sales.by.month * 7

days.per.month <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
profit <- sales.by.month * 7

profit / days.per.month

#Storing text data
greeting <- "hello"
greeting

months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
months[4]

#Working with text
nchar( x = greeting )

nchar( x = months )

#Storing and using logical data
is.the.Party.correct <- 2 + 2 == 5
is.the.Party.correct

is.the.Party.correct <- FALSE
is.the.Party.correct

is.the.Party.correct <- F
is.the.Party.correct

#Vectors of logicals
x <- c(TRUE, TRUE, FALSE)
x


sales.by.month <- c(0, 100, 200, 50, 0, 0, 0, 0, 0, 0, 0,0)
sales.by.month > 0

any.sales.this.month <- sales.by.month > 0
any.sales.this.month

#Indexing vectors
#Extracting multiple elements
sales.by.month[ c(2,3,4) ]

sales.by.month[ c(4,3,2) ]

sales.by.month[ c(2,3,4,5,6,7,8) ]

sales.by.month[2:8]

#Logical indexing
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
months[ sales.by.month > 0 ]

months[ any.sales.this.month ]

any.sales.this.month <- sales.by.month > 0
sales.by.month [ sales.by.month > 0 ]

stock.levels<-c("high", "high", "low", "out", "out", "high", "high", "high", "high", "high", "high", "high")
stock.levels


months[stock.levels == "out"]

months[stock.levels == "out" | stock.levels == "low"]
