# 📊 HMS 520 – Introduction to Programming, Version Control, and Data Wrangling for Health Metrics Sciences  
### Final Project Repository | Autumn 2023 | Kathleen Ashbaker  

This repository contains a comprehensive tutorial and final project demonstrating **simple linear regression in R**, developed as part of HMS 520 at the University of Washington. The course emphasized foundational programming practices, collaborative coding, and real-world data manipulation relevant to health metrics and clinical science.

---

## 🎯 Project Title  
**Data Wrangling and Modeling in R: A Simple Linear Regression Lesson for Researchers**

---

## 📁 Repository Contents

| File Name                  | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| `Final Report.pdf`        | Written report outlining project scope, wrangling, modeling, and results    |
| `PRESENTATION SLIDES.pptx`| Visual summary of model, plots, and key findings                            |
| `linear_regression_tutorial.R` | Raw R script demonstrating the full workflow from data cleaning to modeling |

> 🔔 **NOTE:** Please import the CSV file `Patient_List_aaliyah-washington-md.csv` before running the R script.

---

## 🧠 Project Objectives

- Clean and structure clinical data using `dplyr`, `tidyverse`, and `mice`  
- Perform mean imputation for missing biometric values (e.g., `wt`, `hgba1c`)  
- Create visualizations using `ggplot2` and base R graphics  
- Fit and interpret a **Simple Linear Regression** model (`hgba1c ~ wt`)  
- Evaluate model performance via residual plots, R², and statistical inference  

---

## 🧪 Methodology Overview

- **Data Loading**: Load CSV file using `read_csv()`
- **Cleaning**: Replace `"None"` with `NA`, then apply mean imputation
- **Exploration**: Use scatterplots and trend lines to examine predictor relationships
- **Modeling**: Fit linear model with `lm()` and interpret coefficients
- **Diagnostics**: Check residuals, compute p-values and R²

---

## 📈 Results Summary

| Metric         | Value                  |
|----------------|------------------------|
| Intercept      | 4.96                   |
| Slope (`wt`)   | 0.0125                 |
| R²             | 0.044 (low/moderate)   |
| p-value        | < 0.001 (significant)  |

> Interpretation: A one-unit increase in weight predicts a 0.0125% increase in HgbA1c.

Visualizations and more insights are available in the `Final Report` and `Presentation`.

---

## 🛠️ Tools & Libraries

- R language  
- `tidyverse`, `dplyr`, `mice` – Data wrangling and imputation  
- `ggplot2`, base R – Visualization  
- `lm()` – Linear regression  
- `summary()` – Model interpretation

---

## 👩‍🏫 Intended Audience

This project was designed for:

- Public health and clinical researchers  
- Health metrics students new to R  
- Analysts seeking clean and reproducible regression workflows  
- Professionals exploring predictive modeling with clinical data

---

## 🙋 About the Author

**Kathleen Ashbaker**  
Clinical Microbiologist turned Data Scientist and AI Engineer  
University of Washington, Department of Biomedical Informatics  
📧 Email: [kashba@uw.edu](mailto:kashba@uw.edu)  
🔗 GitHub: [QueenKatherys](https://github.com/QueenKatherys)

---


