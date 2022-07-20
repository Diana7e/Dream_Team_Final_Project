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
The Machine Learning resources and codes are found folder [for ML](https://github.com/Diana7e/Dream_Team_Final_Project/tree/main/for%20ML)
- Data:[ML_data2.csv](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/for%20ML/ML_data2.csv)
- Codes:[Final_ML_codes_update(sied).ipynb](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/for%20ML/Final_ML_codes_update(sied).ipynb)
- Uses Provisional DB

### Data Preprocessing

Used pandas to clean data as well as remove large amounts of rows from the ML dataset due to memory errors. Also used OneHotEncoder to convert categorical data into numerical. Seaborn was used for visuals to help locate outliers which were eventually removed.


### Feature Engineering - Feature Select - Why and How Selected?
The cleaned data set [ML_data2.csv] is used for the machine learning part. This data is generated from the database. In selecting features, we followed two steps. The first step is researchers select features from the original dataset that made the most sense when homebuyers are looking to buy a house. Original Set was (158957 lines, 49 columns) and after cleaning we got to 101974 lines ,15 columns.
![Original](https://github.com/Diana7e/Dream_Team_Final_Project/blob/6399b1357a1730518d94d2e7d2f4aebd2ffbe2b6/pic/Data%20Exploration/Original%20data%20set.png)
![Cleaned](https://github.com/Diana7e/Dream_Team_Final_Project/blob/677c16e67cedada27bfe2da0233491831c4d700a/pic/Data%20Exploration/data%20set%20after%20clean%20up.png)

Based on this step, the features include:
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
* Longitude- the geographic longitude of the houses
* Latitude- the geographic latitude of the houses
* BATHRM - Number of bathrooms in the house
* added Price Per Room calculation to normalize for the trend analysis.

Following the selection variables for the machine learning data set[ML_data2.csv], we further reduce ID and redundant variables. We have different location variables such as latitude, longitude, zipcode, ward, quadrant.  For our analysis, we only need one location variable quadrant and we drop the other location variables. From the [Final_ML_codes_update(sied).ipynb](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/for%20ML/Final_ML_codes_update(sied).ipynb) machine learning code we drop the variables as follows.

![drop additional locations](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/drop%20id%20and%20additional%20locations.png)

Following the first step of feature selection, we conducted data pre-processing on the target and features. We started assessing the quality of the target. We first tried to look at the descriptive statistics of target variable, we find out that infinite values are in the data and we cleaned for it. Further, we obtained outliers using the normal distribution and box plots. As we have several data points, and the outliers are small in number, we choose to drop outliers instead of imputing with mean or average values. 

![drop outliers] (https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/drop_target_outliers.png)

In the second data- pre-processing, we conducted was encoding the categorical variables in the data set. We use the ‘get dummies () ‘function to convert the string categorical variables into numeric. This increases the number of features in the data set, which demands further feature reduction method.
Once the target and features were pre-processed, we run a correlation heatmap to have a quick overview of the association of the target variable with the features. From the heatmap, we can see that the sale data and number of bathrooms are top correlates of price per room. Our key variables, prime rates and school raking are negatively correlated to the price per room. This is expected as, for example, top ranking is associated with lowest number in terms of ranking.

![correlation](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/heatmap.png)

Next, the data was split into train and test using the sklearn train_test_split function. Both the features and target variable werealso scaled using sklearn StandardScaler function which   scales each variable separately by subtracting the mean (called centering) and dividing by the standard deviation to shift the distribution to have a mean of zero and a standard deviation of one.
Once the data is split and, scaled, we run the second feature reduction using feature importance method. We need the feature reduction as we have about 19 features. We use the random frost method for feature selection, which we will see below it is among the two best models.  Using this method, we reduce the number of features to the top ten. The two main features were among the top ten features, in fact, school raking was the second important feature. 

![top ten features] (https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/topten%20features.png)

The data set was updated to include only these features and the target variable. Using these features and target variable, we ran 4 supervised models and deep learning model. The following are the four supervised machine learning models
-	Linear model: since out target variable is continuous, this is the first candidate
-	Random Forest Regressor: we can use this this model for both continuous and categorical target variables
-	Gradient Boost model: we can also use this this model for both continuous and categorical target variables
-	Decision Tree can also be used with continues target variables

### Model evaluation results
 #### Linear model:
![linear](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/linear.png)
#### Random Forest Regressor
![Random-Forest](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/RFT.png)
#### Gradient Boost model
![GB](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/GB.png)
#### Decision Tree
![DT](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/DTR.png)

# Deep learning
![model](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/Deep%20learning_1.png)

![evaluation](https://github.com/Diana7e/Dream_Team_Final_Project/blob/main/pic/Machine%20Learning/Deep%20learning_2.png)


### Final Model

Based on the above results, Gradient Boost model and Random Forest Regressor have the highest R2 and lowest mean squared error. Gradient Boost model is used to predict our data. 

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


