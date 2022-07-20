# Dream_Team_Final_Project
Bootcamp Final Project 
#  Predict home Prices

## Background
### Project Description
**Topic:** Home Price Calculator / Real Property Estimator
_Using machine learning model to predict home value._
An analysis of the effect of school ranking and primerate on the housing price in the Washington DC Metropoplitan area. 
Shelter a key need in the span of every life can never be overemphasized. Whether it is starting a family, relocation or even investment choice, the dream of many to have a place to call their own.
Understanding the ins and outs of the Real Estate market and the entire home buying experince can often be a challenging task for most individuals on house hunt. 
With many factors being considered before landing on a home is interesting to know what factors culminate to the final price of a house in a particular area.
In a study conducted by Owusu-Edusei and Molly Espey in 2003, "high-ranked schools have values embedded in single-family housing prices and greater commuting distances to schools has a negative impact on the value of property".(Owusu-Edusei, Kwame and Molley Espey.  2003. “School Quality and Property Values in Greenville, South Carolina.” Department of Agricultural and Applied Economics, Clemson University. 30 January 2013.) 
It is in light of this conclusions from this and other research conducted that the team wants to undertake this project to identify whats parameters or key components that exist in the market and affect the cost or value of homes in the area.
The outcome of this project we also believe will provide a guide for future home buyers to estimate the real value of the property(s) they seek to acquire. 

**Reason:** Real estate is a hot market right now and all group members were interested in seeing how various factors affect the value of a home in our area. The model and visualizations could be used to help a home buyer determine if the property they're interested in is accurately valued.

**Questions We Hope to Answer**
1. Does the rating of schools affect the home value? If so, how?
2. How does Prime Rate affect home value?
3. Are homes in the area being under- or over-valued?

### Data Sources
- Kaggle: [Preparing the D.C. Real Property Dataset](https://www.kaggle.com/christophercorrea/preparing-the-d-c-real-property-dataset/data)
- SchoolDigger.com: [District of Columbia High School Rankings](https://www.schooldigger.com/go/DC/schoolrank.aspx?level=3)
- DC Public Schools : [School List](https://profiles.dcps.dc.gov/)
- FRED Economic Data: [Bank Prime Loan Rate Changes: Historical Dates of Changes and Rates (PRIME)](https://fred.stlouisfed.org/series/PRIME)

### Software
- Jupyter Notebook
	- Python
- pgAdmin 4
	- PostgreSQL
- [Quick Database Diagrams](https://app.quickdatabasediagrams.com/#/d/uJkZHb)
- Tableau


### Group Presentation Can Be Found [Here](https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/Dream_Team_Project_Presentation.pptx)


## Data Exploration
 
We explored out data using Python & Jupyter Notebook. We utilized the Pandas, Matplotlib, Seaborn and Numpy libraries. The process we utilized to explore the data is outlined below.

<img width="795" alt="Data_Exploration_Process" src="https://user-images.githubusercontent.com/89493488/153049290-43d12230-6cfe-4dd4-b768-1f50b6d8e095.png">

**Main Takeaways from Data Exploration**
- Many outliers in the data set
	- Led us to suspect that there were additional real estate types in the home data set
- Had to transform many columns to the correct data type (like date and convert str to intg)
- Found many columns that did not add value to preducting home price so we have deleted it. 

[Data Exploration]('https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/Data_exploration_EDA_DC_Housing.ipynb')

 
## Database

Our database was constructed using PostgreSQL in pgAdmin 4. Our tables and relationships are shown in the ERD below. For a more detailed description of the data, please use the data dictionary below.

[Data Dictionary](https://github.com/Diana7e/Dream_Team_Final_Project/blob/0ccd6804cc487fa3167548a021a4f9974764811d/pic/data%20dictionary.png)

![Final_ERD](https://github.com/Diana7e/Dream_Team_Final_Project/blob/0ccd6804cc487fa3167548a021a4f9974764811d/pic/data%20dictionary.png)
 
[Clean Set of tables](https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/cleaned_data/ML_data2.csv)
 

## Machine Learning

Provisional ML Model 
Uses Provisional DB
Labels for INPUTs



### Data Preprocessing

Used pandas to clean data as well as remove large amounts of rows from the ML dataset due to memory errors. Also used OneHotEncoder to convert categorical data into numerical. Seaborn was used for visuals to help locate outliers which were eventually removed.


### Feature Engineering - Feature Select - Why and How Selected?

We chose the features from the original dataset that made the most sense when homebuyers are looking to buy a house. Original Set was (158957 lines , 49 columns). and after cleaning we got to 101974 lines ,15 columns
![Original](https://github.com/Diana7e/Dream_Team_Final_Project/blob/6399b1357a1730518d94d2e7d2f4aebd2ffbe2b6/pic/Data%20Exploration/Original%20data%20set.png)

![Cleaned] (https://github.com/Diana7e/Dream_Team_Final_Project/blob/6399b1357a1730518d94d2e7d2f4aebd2ffbe2b6/pic/Data%20Exploration/Original%20data%20set.png)

The features include:
 	
* HF_BATHRM - Number of half bathrooms in the house		
* SALEDATE - Year of sale 	
* PRIME - Prime rate for the year of the saledate
* ROOMS - Number of rooms in the house	
* KITCHENS -  Number of kitchens in the house		
* WARD - Ward of Washington DC where the house is located
* BEDRM  -  Number of bedrooms in the house		
* FIREPLACES - Number of fireplaces in the house		
* LANDAREA - Square footage of land the house is placed on 
* ZIPCODE - Zipcode of the house
* AC - If the house has AC or not 	 	 	 	 	 	
* QUADRANT - Quandrant of Washington DC where the house is located
* BATHRM - Number of bathrooms in the house
* added Price Per Roon calculationn to normalise for the trend analysis.

![Ilustration 1](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Data%20Exploration/Data%20exporation%201.png)
![Ilustration 2](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Data%20Exploration/Data%20Exploration%204.png)
![Ilustration 3](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Data%20Exploration/Feature%20Importance.png) 

### Machine Learning Model Limitations and Benefits
RandomForestRegressor
Function: Input data is passed through multiple trees and it outputs the mean prediction of the individual trees
RFR provides higher accuracy through cross-validation
More trees cushion potential over-fitting

LinearRegression
Function: Predicts a dependent variable target based on the given independent variables
Four assumptions of linear regression: linear relationship, independence, homoscedasticity, normality 
Very simple model
Avoid overfitting by using cross-validation


### Update 1
We found through Data Exploration that we need to use Price Per room as X variable instead of sales price total - to avoid multi-correlation issues and also we are exploring Linear Regression and RandomForrestRegressor  to see which one will give higher accuracy

[First Attempt with sales price](https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/for%20ML/Final_project_ML.ipynb)
![First Attempt with sales price](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Machine%20Learning/First%20run%20.png)

 RandomForrestRegressor has highest R2 between  models used. 

### Update 2
after trying to alter  models we were able to achieve an accuracy >50%. By cleaning ireelevant data and working with Price per room instead of Sales price. Also Quadrant and ZIP plays a role:  For example, a house in southeast DC which is considered mostly low income could have the same number of features as a house in northwest DC which is considered higher income but sell for completely different prices. 

[Second Attempt with price per room price](https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/cleaned_data/Final_project_ML-update.ipynb)

![RFR Prediction](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Machine%20Learning/RFR%20result%20.png)

As we can see we got to a very close match between Prediction price and Actual with RFR.  RandomForrestRegressorContinue to have  higher R2 - as a result it countinue to be  prefered model. Considering we are using a limited data set, and ignoring condition or property, Size of SQf, and year build -  it does increases error in the prediction model.


[Third Attempt with price per room price and expanding to Machine Learning](https://github.com/Diana7e/Dream_Team_Final_Project/blob/df08c175cc03d1802e3b509487c31c2f02aba04b/Final_ML_codes_update(sied).ipynb)



### Update 3

 
## Dashboard

[Tableau Dashboard](https://github.com/Diana7e/Dream_Team_Final_Project/blob/fff9db90abc592ebec128466b6f817e7442157b3/housing%20dc.twbx)

Tableau is the Data Visualization Tool currently being used for this Project and will depict the following:
- Average Price Per Room by Location and School Rating
- Home Sales By Year and corelation with PRIME Rate
- Map Depicting the Location of Schools in each Ward of DC
- Average Price vs. School Ranking
![map ilustration](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Dashboard/school%20rannking%20and%20avg%20price%20per%20woom%20.png)



We were able to use our dashboard to answer two of our initial questions:

1. Does the rating of schools affect the home value? If so, how?
	We can see that schools with a higher ranking are located in a ward where the average home price is higher.
![Avg Home Pirce vs School Ranking](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Dashboard/Preci%20per%20%20room%20%20(3dr)%20based%20on%20school%20rantinking%20and%20location'.png)

2. How does Prime Rate affect home value?
	we can see that as the interest (prime) rate has decreased, the average home price has increased over time.
![Prime Rate vs Home Value](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Dashboard/prime%20rate%20and%20avr%20price%20per%20room%20overtime.png)

3. Are homes in the area being under- or over-priced?
The project would be for home buyers/sallers to determine if the home they are looking to purchase is above or below avg price for this location, size, and school proximity.
It is important to note that this model does not take into account Year build, Sq, Condition, etc  
![Avg Home Pirce vs School Ranking](https://github.com/Diana7e/Dream_Team_Final_Project/blob/264c87ea1e693503b216dd0648210f1a900db06e/pic/Dashboard/Estimated%20Price%20per%20room.png)


