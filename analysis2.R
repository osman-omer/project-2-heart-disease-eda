# =========================================
# Project 2: Heart Disease Exploratory Data Analysis (EDA)
# Author: Osman Omer
# Purpose: Practice and understand the full EDA workflow
# =========================================


# ---------- 1. Load required libraries ----------
library(tidyverse)


# ---------- 2. Read the dataset ----------
# file.choose() allows manual file selection
data <- read_csv(file.choose())


# ---------- 3. Inspect the data structure ----------
# Number of rows and columns
dim(data)

# Column names
names(data)

# Preview first 6 rows
head(data)


# ---------- 4. Describe the data (overall summary) ----------
# General summary for all variables
summary(data)


# ---------- 5. Describe numeric variables individually ----------
# Age
summary(data$age)

# Resting blood pressure
summary(data$trestbps)

# Cholesterol
summary(data$chol)

# Maximum heart rate achieved
summary(data$thalach)

# ST depression (oldpeak)
summary(data$oldpeak)


# ---------- 6. Visual exploration: distributions ----------
# Age distribution
hist(data$age,
     main = "Distribution of Age",
     xlab = "Age")

# Resting blood pressure distribution
hist(data$trestbps,
     main = "Distribution of Resting Blood Pressure",
     xlab = "Resting Blood Pressure")

# Cholesterol distribution
hist(data$chol,
     main = "Distribution of Cholesterol",
     xlab = "Cholesterol")

# Maximum heart rate distribution
hist(data$thalach,
     main = "Distribution of Maximum Heart Rate",
     xlab = "Maximum Heart Rate")


# ---------- 7. Compare by outcome (target) ----------
# Age by heart disease status
boxplot(age ~ target, data = data,
        xlab = "Target (0 = No disease, 1 = Disease)",
        ylab = "Age",
        main = "Age by Heart Disease Status")

# Cholesterol by heart disease status
boxplot(chol ~ target, data = data,
        xlab = "Target (0 = No disease, 1 = Disease)",
        ylab = "Cholesterol",
        main = "Cholesterol by Heart Disease Status")


# ---------- 8. End of EDA ----------
# This script focuses on inspection, description, visualization,
# and basic descriptive comparison only (no statistical testing).
