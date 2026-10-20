#
# INTERMEDIATE R - Tutorial
# by Nadia Muhe, Map & Data Library
# GitHub: https://github.com/MDLutoronto/r-intermediate 
#===============================================================================

#------------------------------#
# Packages                     #
#------------------------------#

# Install packages
install.packages(c("dplyr", "tidyr", "glue"))

# Load packages
library(dplyr)   # To manipulate and combine data
library(tidyr)   # To reshape data
library(glue)    # To print variables easily


#---------------------------------#
# Data Manipulation with dplyr    #
#---------------------------------#

# DATA: load data
data(storms)

# FILTER: keep rows that meet a condition
filter(storms, pressure < 1000)

# PIPE (%>%): send the result to the next step
# Shortcut: Ctrl + Shift + M
storms %>% filter(pressure < 1000)
topstorms <- storms %>% filter(pressure < 1000)
topstorms

# SELECT: keep or drop columns
topstorms %>% select(name)
topstorms %>% select(ends_with("diameter"))
topstorms %>% select(-ends_with("diameter"))
topstorms <- topstorms %>% select(-ends_with("diameter"))
topstorms

# GROUP_BY: group rows that share a value
topstorms %>% group_by(name)

# SUMMARIZE: one summary row per group
topstorms %>% 
  group_by(name) %>% 
  summarize(minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
topstorms %>% 
  group_by(name, year) %>% 
  summarize(count = n(), 
            minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
topstorms <- topstorms %>% 
  group_by(name, year) %>% 
  summarize(count = n(), 
            minpressure = min(pressure), 
            meanlat = mean(lat), 
            meanlong = mean(long))
topstorms

# MUTATE: add or change columns
topstorms %>% mutate(duration = 6 * count)
topstorms <- topstorms %>% mutate(duration = 6 * count)
topstorms

# ARRANGE: sort rows
topstorms %>% arrange(minpressure, desc(duration))
topstorms <- topstorms %>% arrange(minpressure, desc(duration))
topstorms

# WRITE.CSV: export data as a CSV file
write.csv(topstorms, "topstorms.csv")
write.csv(topstorms, "topstorms.csv", row.names = FALSE)


#---------------------------#
# If Statements             #
#---------------------------#

# Example 1: Is a storm in the dataset?
mystorm <- "Katrina"    # Try "Katrina" then "Ben"

if (mystorm %in% storms$name) {
  print("This storm is in the dataset.")
} else {
  print("This storm is not in the dataset!")
}


# Example 2: North-south storm movement
head(storms)
summary(storms$lat)
if(storms$lat[2] > storms$lat[1]) {
  print(glue("{storms$name[2]} is moving north."))
} else if (storms$lat[2] < storms$lat[1]) {
  print(glue("{storms$name[2]} is moving south."))
}


#---------------------------#
# For Loops                 #
#---------------------------#

# Example 1: Looping over values
students <- c("Kai", "Ana", "John", "Ella", "Belle")

for (name in students) {
  print(glue("{name} has {nchar(name)} letters."))
}


# Example 2: Looping over row numbers
nrow(storms)
for (row in 2:nrow(storms)) {
  if(storms$lat[row] > storms$lat[row-1]) {
    print(glue("{storms$name[row]} is moving north."))
  } else if (storms$lat[row] < storms$lat[row-1]) {
    print(glue("{storms$name[row]} is moving south."))
  }
}


#---------------------------#
# Functions                 #
#---------------------------#

# Example 1: No arguments
helloworld <- function() {
  print("Hello World!")  
}
helloworld()


# Example 2: One argument
helloname <- function(name) {
  print(glue("Hello {name}!"))  
}
helloname("Kai")


# Example 3: Return a value
addtax <- function(price) {
  return(round(price * 1.13, 2))
}
addtax(49.99)
addtax(49.99) + addtax(79.99)








