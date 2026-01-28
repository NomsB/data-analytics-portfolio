# Customer Churn Analysis

## Business Problem
Customer churn occurs when customers stop using a company’s service. Retaining existing customers is often more cost-effective than acquiring new ones. This project analyzes customer data to identify patterns associated with churn and builds a model to help predict which customers are at risk of leaving.

## Objectives
- Explore customer behavior and characteristics
- Identify factors associated with churn
- Segment customers based on behavior
- Build a basic machine learning model to predict churn risk
- Provide business recommendations to improve retention

## Tools Used
- Google Colab
- 

## Expected Outcomes
- 

## Model Insights
The logistic regression model achieved an accuracy of approximately 82.40% [see accuracy_score.png]. Key factors associated with churn include contract type, tenure, and monthly charges. Customers with shorter tenure and month-to-month contracts show higher churn probability.

## Key Exploratory Data Analysis Findings
- Customers on month-to-month contracts show higher churn
- Customers with shorter tenure are more likely to churn
- Higher monthly charges appear associated with increased churn risk

## Key Insights
- **Contract type**: Customers on month-to-month contracts show significantly higher churn compared to those on one-year or two-year contracts. This suggests that longer commitments are associated with better retention.
- **Internet Service**: Customers using fibre optic internet have a higher churn rate than those using DSL or no internet service. This may indicate pricing sensitivity, service quality concerns, or higher expectations among fibre users.
- **Payment Method**:Customers who pay via electronic check churn more than those using automatic or card-based payment methods. This could suggest that customers with less automated billing are less engaged or more likely to discontinue service.
- **Combined Risk Profile**
Customers on month-to-month contracts, using fibre optic internet, and paying via electronic check represent a higher-risk churn segment. These customers may benefit most from targeted retention strategies.

## Business Value
- Even a small improvement in contract conversions can significantly reduce churn, stabilizing recurring revenue and lowering customer acquisition costs.
- Fibre customers often pay more. Reducing churn in this segment protects high-value revenue and improves customer lifetime value.
- Customers on automatic payments are typically more engaged and less likely to churn. This also reduces late payments and administrative costs.
- Targeted retention is cheaper and more effective than mass promotions. Focusing on high-risk customers maximizes ROI on retention spending.

## Recommendations
- Introduce incentives to move customers onto longer-term contracts:
  1. Discounted upgrade to 1-year plans
  2. Loyalty discounts after 6 months
  3. Bundled service offers
     
- Conduct deeper analysis or surveys to understand:
  1. Service reliability issues
  2. Pricing dissatisfaction
  3. Installation or support problems
 
- Promote auto-pay options:
  1. Small monthly discount for debit/credit auto-pay
  2. Easy one-click payment method switch
  3. Highlight convenience and security benefits

- Build a churn risk flag in the CRM system.
  Trigger retention actions such as:
  1. Proactive support calls
  2. Personalized offers
  3. Service check-ins
  
## Enhancement
- Further analysis or modeling could quantify how strongly these factors predict churn when considered together.
