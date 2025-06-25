# 📊 Linear Regression in R: A Tutorial for Professionals and Researchers
# 👩‍🔬 Overview
Welcome to this repository containing a comprehensive tutorial on Simple Linear Regression using R, developed by Kathleen Ashbaker as part of the HMS 520: Introduction to Data Science course at the University of Washington (Autumn 2023).

This tutorial is designed for researchers, analysts, and professionals who want a clear and applied introduction to linear regression modeling, data wrangling, and basic statistical interpretation using real-world clinical data.

### 📁 Repository Contents
File	Description
Final Report.pdf	Full written report outlining project scope, data wrangling, regression modeling, results, and interpretation
.
PRESENTATION SLIDES.pptx	Slide deck used in final project presentation; includes visualizations and summary of model output ( alternatively click the PRESENTATION SLIDES PDF) 
.
linear_regression_tutorial.R	Raw R code file walking through the complete analysis pipeline from data cleaning to regression interpretation.

### 📌 Project Objectives
Demonstrate how to clean clinical data using packages like dplyr, tidyverse, and mice.

Perform mean imputation on missing values for key variables (wt, hgba1c).

Use data visualization tools (ggplot2 and base R) to plot relationships.

Fit and interpret a Simple Linear Regression model predicting HgbA1c based on patient weight.

Evaluate model diagnostics including residuals, R², and p-values.

### 🧪 Methodology Overview
Data Loading: Import a real clinical dataset (Patient_List_aaliyah_washington_md.csv) into R.

Data Cleaning: Handle missing values labeled as "None" and apply mean imputation.

Exploratory Visualization: Plot scatterplots in both base R and ggplot2 to explore trends.

Model Fitting: Use lm() to model hgba1c ~ wt and interpret the results.

Result Interpretation: Understand regression coefficients, statistical significance, and model fit.

### 📈 Results Summary (Cleaned Data)
Intercept: 4.96

Slope (wt): 0.0125 → Each unit increase in weight predicts a 0.0125% increase in HgbA1c.

R-squared: 0.044 → Modest but statistically significant model.

p-value: < 0.001 → High statistical confidence in the relationship between weight and HgbA1c.

Visualizations of the model output are provided in the PDF report and slide deck.

### 🛠️ Tools & Libraries
R Language

tidyverse, dplyr, mice – Data manipulation and imputation

ggplot2, base – Data visualization

lm() – Linear regression modeling

summary() – Model interpretation

### 🎓 Intended Audience
This tutorial is tailored for:

Clinical researchers new to statistical modeling

Public health analysts working with biometric or lab data

Students in introductory ML or biostatistics courses

Professionals seeking reproducible R workflows for modeling

### 🙋 About the Author
Kathleen Ashbaker
Clinical Microbiologist turned Data Scientist and AI Engineer
University of Washington, Department of Biomedical Informatics
📧 Email: kashba@uw.edu
🔗 GitHub: QueenKatherys

📂 Usage & Access
This repository is packaged in a compressed folder format for efficient download and sharing. It is intended for educational and demonstration purposes only.

📎 Citation
Ashbaker K. Final Report: Data Wrangling and Modeling in R – A Simple Linear Regression Lesson for Researchers. University of Washington, HMS 520; 2023.




# HMS-Autumn-2023-Final-Project-Additional Details Here 

Subject: Proposal for Final Project - Data Wrangling and Modeling in R; A Simple Linear Regression Lesson for Researchers. 

To Whom it May Concern

I am writing to propose my final project for HMS 520.  I will be working individually on this project, and my primary goal is to analyze a sample data set from a physician, 'Patient_List_aaliyah-washington-md.csv'  using data wrangling and modeling tools in R.

NOTE: PLEASE IMPORT THE CSV FILE 'Patient_List_aaliyah-washington-md.csv' WITHIN THIS REPOSITORY BEFORE BEGINNING THIS EXCERCISE FOR THIS PROJECT !!!!!!!! 

This particular project provides a beginner's guide to simple linear regression, using a provided data set from a physician. 
Simple linear regression is a machine learning technique which can be used and demonstrated in R. 
As a second year master's level student working on their thesis in machine learning applied to biomedical systems, I designed this project for learners at all levels, from novices to advanced users, with the intention to cater to both students and researchers seeking to enhance their R skills. 

NOTE: PLEASE IMPORT THE CSV FILE 'Patient_List_aaliyah-washington-md.csv' BEFORE BEGINNING THIS EXCERCISE!!!!!!!! 

I had a lot of fun working on this simple, yet comprehensive demonstration of a this simple machine learning model. 

Team Member(s): Myself, Kathleen Ashbaker

Project Format: The project will be presented in a written report format along with R code and visualizations to demonstrate the data wrangling and modeling processes. Additionally, I will provide a presentation summarizing the key findings and insights from the project.

Overall Goal: The overall goal of this project is to apply the concepts and skills I have learned throughout this course to a real-world dataset. Specifically, I intend to:

Data Wrangling: Clean, preprocess, and transform the dataset to make it suitable for analysis. This will involve tasks such as handling missing data, data normalization, and feature engineering.

Exploratory Data Analysis (EDA): Conduct thorough EDA to understand the dataset's characteristics, including summary statistics, data distributions, and identifying potential patterns or trends.

Modeling: Apply appropriate statistical and machine learning models to gain insights or make predictions based on the dataset. The choice of models will depend on the nature of the dataset and the research questions.


Evaluation: Evaluate the performance of the models and interpret the results. This step will include metrics, visualizations, and any necessary hypothesis testing.




Detailed Plans and Timeline:

By December 2-4: I will finalize the selection of the dataset for analysis. The dataset will be chosen based on its relevance and complexity to demonstrate a comprehensive understanding of data wrangling and modeling techniques.

By December 5: I will complete the initial data exploration and cleaning phase. This includes handling missing values, addressing outliers, and preparing the dataset for modeling.

By December 5: I will conduct exploratory data analysis (EDA) to gain insights into the dataset's characteristics and identify any preliminary patterns or relationships.

By December 7: I will start building and training statistical or machine learning models based on the research questions or objectives of the analysis.

By December 10: I will evaluate the models' performance, fine-tune them if necessary, and generate visualizations and summary statistics to present the results.

By December 13: I will complete the final report, including the project's introduction, methodology, results, and conclusion. Additionally, I will prepare the presentation slides.

By December 14: I will rehearse and refine my presentation for the project's submission.

By December 15: I will submit the final project report and deliver the presentation during the designated presentation period.

I believe that this project will provide a valuable opportunity to apply the knowledge and skills gained during the course to real-world data analysis. I am committed to completing the project successfully and look forward to your guidance and feedback throughout the process.

Thank you for considering my proposal, and I am excited to embark on this project.

Sincerely,

Kathleen Ashbaker
