# Kathleen Ashbaker
# HMS 520 Fall 2023
# Final Project 
# Linear Regression: A Simple Machine Learning Model 

# SCOPE OF PROJECT: 

# This project provides a beginner's guide to simple linear regression,
# which is  machine learning technique in R.
# Designed for learners at all levels, from novices to advanced users,
# it caters to both students and researchers seeking to enhance their R skills

# Step 0:Load Libraries 

library(readr)
library(tidyverse)
library(mice)
library(dplyr)
library(ggplot2)

# Step 1: ---------------- Upload Data and save into data frame ; This is the Patient_List_aaliyah_washington_md csv file 

Patient_List_aaliyah_washington_md <- read_csv("Patient_List_aaliyah-washington-md.csv", show_col_types = FALSE)

# The argument 'show_col_types = FALSE' masks the object types of columns, easing reading of the 'Patient_List_aaliyah_washington_md' data frame

# Step 2:----------------Data Examination and Cleaning 

# Using dplyr and mutate_all() to change 'None' values to ' NA'  

Patient_List_aaliyah_washington_md <- Patient_List_aaliyah_washington_md %>%
  mutate_all(~ifelse(. == "None", NA, .))

# Summarizes data frame 

summary(Patient_List_aaliyah_washington_md)


# Optional Ways to Check Column values, for example "wt" and "hgba1c"

wt_column <- Patient_List_aaliyah_washington_md["wt"]
View(wt_column)

hgba1c_column <- Patient_List_aaliyah_washington_md["hgba1c"]
View(hgba1c_column)

# Counting 'NA' values in a column; for example, 'wt' 

count_na <- function(data, column_name) {
  if (!column_name %in% names(data)) {
    return(paste("Column", column_name, "not found in the data frame."))
  }
  
  na_count <- sum(is.na(data[[column_name]]))
  return(paste("Column", column_name, "has", na_count, "NA value(s)."))
}

result <- count_na(Patient_List_aaliyah_washington_md, "wt")
print(result)


# Mean/Median Imputation: 
# Best for when the missing data is not a significant portion of the dataset 
# and is assumed to be missing completely at random (MCAR).
# This is the case for our data set 

# Check if columns are numeric, for example 'wt' column

is_numeric <- is.numeric(Patient_List_aaliyah_washington_md$wt)
print(is_numeric)

# Apply Mean Imputation

# Convert Multiple Columns to Numeric
# If you have multiple columns to convert, you can use mutate() with across().
# specify which columns; in this example, we selected columns 'wt' and 'hgba1c'

Patient_List_aaliyah_washington_md <- Patient_List_aaliyah_washington_md %>%
  mutate(across(c(wt, hgba1c), ~ as.numeric(as.character(.))))

# Perform Imputation
# Here's a function to apply mean or median imputation to all columns:
impute_data <- function(data, use_median = FALSE) {
  data %>% 
    mutate(across(where(is.numeric), ~ ifelse(is.na(.), 
                                              if (use_median) median(., na.rm = TRUE) else mean(., na.rm = TRUE), 
                                              .)))
}

# Apply the 'impute_data' Function 
# You can apply this function to your data frame. 
# For this data set, we will use mean imputation:

Patient_List_aaliyah_washington_md <- impute_data(Patient_List_aaliyah_washington_md)




# Step 1: Remove rows with NA values and zeros
cleaned_data_ggplot2 <- subset(na.omit(Patient_List_aaliyah_washington_md), wt != 0 & hgba1c != 0)

# Load ggplot2 package
library(ggplot2)

# Assuming your dataframe is named cleaned_data_ggplot2
# and it contains the columns 'wt' and 'hgba1c'




# Step 3A:----------------plot data 
plot(Patient_List_aaliyah_washington_md$wt, Patient_List_aaliyah_washington_md$hgba1c,xlab = "Weight(lbs)", 
     ylab = "HgbA1c(%)", 
     main = "Does Weight Predict HgbA1c?")



# Optional: Plot only those data points which do not contain any 'NA' values for either 'wt' or 'hgba1c'

# Two ways to do this: Method 1: 'plot' function

# Step 1B: Remove rows with NA values
cleaned_data <- na.omit(Patient_List_aaliyah_washington_md)

# Step 2B: Exclude rows where 'wt' or 'hgba1c' is 0
cleaned_data <- subset(cleaned_data, wt != 0 & hgba1c != 0)

# Step 3B: Plot data
plot(cleaned_data$wt, cleaned_data$hgba1c,xlab = "Weight(lbs)", 
     ylab = "HgbA1c(%)", 
     main = "Does Weight Predict HgbA1c?")

#---------- trend line in Plot data (shown for cleaned_data only)

# Fit a linear model
model <- lm(hgba1c ~ wt, data = cleaned_data)

# Add a trend line to the plot
abline(model, col = "red")

# Method 2: 'ggplot' function ; while ggplot2 does a good job of handling NA values 
# by default (usually by exclusion), you have a variety of options to manage NAs explicitly based on your specific needs and the nature of your data

# Create scatter plot with ggplot2
ggplot(cleaned_data_ggplot2, aes(x = wt, y = hgba1c)) +
  geom_point() +  # Add scatter points
  geom_smooth(method = "lm", color = "red") +  # Add linear regression trend line
  labs(x = "Weight(lbs)", y = "HgbA1c(%)", title = "Does Weight Predict HgbA1c?") +
  theme_minimal() +  # Adds a minimal theme to the plot
  theme(plot.title = element_text(hjust = 0.5))  # Center the title


# Step 4A:----------------Simple Linear Regression 
patreg<- lm(hgba1c ~ wt, data = Patient_List_aaliyah_washington_md)


# Step 5A:----------------Summarize Linear Regression Output
summary(patreg)

# Step 4B:----------------Simple Linear Regression with cleaned_data 
patregclean<- lm(hgba1c ~ wt, data = cleaned_data)


# Step 5B:----------------Summarize Linear Regression Output for cleaned_data
summary(patregclean)
