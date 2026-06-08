# THE GENTRIFICATION IMPACT ON MEXICO CITY HOUSE PRICES (2022)
## Overview
This project investigates the relationship between gentrification and housing prices in Mexico City using cross-sectional housing market data from 2022.

The study evaluates how property characteristics, location factors, government subsidies, construction year, and neighborhood characteristics influence housing values across different municipalities (alcaldías).

The analysis also explores the social implications of gentrification, including rising housing costs, urban redevelopment, foreign investment, and potential displacement of local residents. 

## Research Question
How does gentrification affect housing prices in Mexico City?

## Dataset
The dataset contains residential housing observations across Mexico City, including:

| Variable                      | Description                               |
| ----------------------------- | ----------------------------------------- |
| Unit Price                    | Property price per square meter           |
| Distance from City Center     | Distance to downtown Mexico City          |
| Government Subsidy            | Housing subsidy received                  |
| Construction Year             | Year when the property was built          |
| Construction Area             | Built area (m²)                           |
| Land Area                     | Land size (m²)                            |
| Affordable Municipality Dummy | Indicator for lower-priced municipalities |

Number of observations:

4,630 properties

## Methodology

### Data Preparation
Missing value treatment
Outlier analysis
Logarithmic transformations
Exploratory Data Analysis (EDA)
Regression Model

### Regression Model

The final specification follows a multivariate linear regression model:

Y = β₀ + β₁X₁ + β₂X₂ + ··· + β₇X₇ + ε

where:

- Y = Log unit housing price
- Xi = Explanatory variables
- βi = Regression coefficients
- ε = Error term

Robust standard errors were used to address heteroskedasticity.



## Main Conclusion
The results suggest that gentrification contributes to the appreciation of housing values in several Mexico City municipalities, particularly in areas experiencing urban redevelopment and increased investment.

While these changes may improve infrastructure, safety, and economic activity, they can also generate social challenges such as affordability pressures, displacement of long-term residents, and changes in neighborhood identity.

Future research should employ panel or time-series data to better identify causal relationships between gentrification dynamics and housing market outcomes.

## Technologies
Stata
Multiple Linear Regression
Robust Standard Errors
Exploratory Data Analysis
Logarithmic Transformations

## Author

Dulce De La Paz Ortiz

Mexico City, Mexico

