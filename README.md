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
- XXXX
- Tableau

### Group Presentation Can Be Found [Here](https://docs.google.com/presentation/d/1p3f3fPAG52i6CuOPlITI9NBqrMoxVzpww_r6iccB7fo/edit?usp=sharing)


## Data Exploration
 
We explored out data using Python & Jupyter Notebook. We utilized the Pandas, Matplotlib, Seaborn and Numpy libraries. The process we utilized to explore the data is outlined below.

<img width="795" alt="Data_Exploration_Process" src="https://user-images.githubusercontent.com/89493488/153049290-43d12230-6cfe-4dd4-b768-1f50b6d8e095.png">

**Main Takeaways from Data Exploration**
- Many outliers in the data set
	- Led us to suspect that there were additional real estate types in the home data set
- Had to transform many columns to the correct data type
- Found many columns that did not add value to preducting home price


## Database

Our database was constructed using PostgreSQL in pgAdmin 4. Our tables and relationships are shown in the ERD below. For a more detailed description of the data, please use the data dictionary below.

[Data Dictionary]('https://github.com/Diana7e/Dream_Team_Final_Project/blob/0ccd6804cc487fa3167548a021a4f9974764811d/pic/data%20dictionary.png')

![Final_ERD](https://github.com/Diana7e/Dream_Team_Final_Project/blob/0ccd6804cc487fa3167548a021a4f9974764811d/pic/data%20dictionary.png)
 

## Machine Learning

Provisional ML Model 
Uses Provisional DB
Labels for INPUTs



### Data Preprocessing

Used pandas to clean data as well as remove large amounts of rows from the ML dataset due to memory errors. Also used OneHotEncoder to convert categorical data into numerical. Seaborn was used for visuals to help locate outliers which were eventually removed.

### Feature Engineering - Feature Select - Why and How Selected?

We chose the features from the original dataset that made the most sense when homebuyers are looking to buy a house. 

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

added Price Per Roon calculationn to normalise for the trend analysis.

### XXXXXX - Why and How Selected?

XXXXX
### Model Limitations and Benefits

XXXXXXXXX

### Update 1
We found through Data Exploration that we need to use Price Per room as X variable instead of sales price total - to avoid multi-correlation issues and also we are exploring Linear Regression and RandomForrestRegressor  to see which one will give higher accuracy
 

### Update 2

 

### Update 3

 
## Dashboard

[Tableau Dashboard](https://public.tableau.com/appxxxxx)

Tableau is the Data Visualization Tool currently being used for this Project and will depict the following:
- xxxxxx

We were able to use our dashboard to answer two of our initial questions:

1. Does the rating of schools affect the home value? If so, how?
	
xxxxxxx
2. How does Prime Rate affect home value?
	
xxxxxx
