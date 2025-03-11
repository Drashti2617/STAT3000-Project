#FIFA Player Performance Analysis
Project Overview
Project Title: FIFA Player Performance Analysis
Level: Intermediate
Dataset: FIFA 2024 Player Statistics

This project analyzes the key factors influencing the overall performance ratings of FIFA players using regression analysis. The goal is to determine how "Hits" (popularity and engagement) and "Potential" (future growth projection) affect a player's Overall rating. Using statistical modeling, the project identifies the strongest predictor and provides insights into the factors that drive player success.

Objectives
Data Preprocessing: Load and clean FIFA player data.
Exploratory Data Analysis (EDA): Visualize relationships between Overall rating and explanatory variables.
Regression Analysis: Build statistical models to quantify the impact of Hits and Potential on player performance.
Model Refinement: Use statistical techniques to improve model accuracy and reduce multicollinearity.
Business Insights: Provide actionable insights for talent scouting and team management.
Dataset
Source: Kaggle - FIFA 2021 Complete Player Data
Features Used:
Overall: Player's current performance rating (1-100).
Hits: Number of fan engagements and media mentions.
Potential: Predicted peak performance of the player (1-100).

Project Structure
FIFA_Player_Analysis/
│── data/
│   ├── FIFA.csv (original dataset)
│── scripts/
│   ├── data_cleaning.R (data preprocessing)
│   ├── analysis.R (statistical analysis)
│   ├── visualization.R (scatter plots, residual plots)
│── results/
│   ├── regression_summary.txt (model performance metrics)
│   ├── insights.pdf (final report)
│── README.md
│── FIFA_Player_Analysis_Report.pdf

Methodology
1.)Data Preprocessing
Load FIFA dataset.
Select relevant features (Overall, Hits, Potential).
Handle missing or inconsistent values.
2.)Exploratory Data Analysis
Scatterplots: Hits vs. Overall, Potential vs. Overall.
Correlation Analysis: Identify relationships between variables.
3.)Regression Models
Single Variable Models:
Overall ~ Hits → R² = 0.4385
Overall ~ Potential → R² = 0.5808
Multivariate Model:
Overall ~ Hits + Potential
Adjusted R² = 0.6103 (best fit)
4.)Model Refinement
Addressed multicollinearity using Variance Inflation Factor (VIF).
Removed insignificant interaction terms.
Final Model:
Overall = 43.723 + (0.008 * Hits) + (0.496 * Potential)

Key Findings
Potential is a stronger predictor of Overall rating than Hits.
Both Hits and Potential significantly impact Overall performance.
Regression model explains ~61% of the variability in player ratings.
Residual analysis confirms the model meets linear regression assumptions.

How to Run the Analysis
1.)Clone this repository
git clone https://github.com/your-repo/FIFA-Player-Performance-Analysis.git
cd FIFA-Player-Performance-Analysis

2.)Install Required Packages
install.packages("ggplot2")
install.packages("car")  # For VIF analysis

3.)Run Analysis
source("scripts/data_cleaning.R")
source("scripts/analysis.R")
source("scripts/visualization.R")

Conclusion
This project provides valuable insights for FIFA analysts, club managers, and sports statisticians. It demonstrates the effectiveness of statistical modeling in player evaluation and scouting.
