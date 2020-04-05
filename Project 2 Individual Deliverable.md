# Project 2: Cuba 

## Part 1: Acquiring, Modifying, and Describing the Data
![](project2_combinedhisto_1.png)
![](project2_combinedhisto_2.png)

These graphs represent predictions of Cuba's population density based on differing covariates. Several covariates—which make predictions of population counts in specified regions based on specific landmarks or traits seen in acquired satellite images—were used in this project. The top graph represents an overlap of a histogram and density plot showing how the covariates of water, topography, slope, and night-time lights, while the bottom graph uses several dst covariates, which include herbaceous cover, and urban and bare areas. The 168 municipalities of Cuba are represented in these graphs. Population counts are modified with a log function so as to reduce the effect of any one outlier that may have a significantly higher or lower population count than the rest of the municipalities.  

![](project2_linmod_1.png)
![](project2_linmod_2.png)

These plots represent a regression model showing the relationship that is described by the actual spatial distribution of population in Cuba compared to differing covariates. The top graph depicts how the covariates of water, topography, slope, and night-time lights predict population counts in Cuba's 168 municipalities (individual points on the plot), while the bottom graph uses several dst covariates. Both graphs display many municipalities that do not lie within the confidence interval nor close to the regression line, showing that the specific combinations of covariates are not the best for predicting the population in Cuba. The top graph resulted in an adjusted R-squared value of 0.6662, and a p-value of 2.2e-16, showing that the prediction wasn't all too bad. However, the bottom graph yielded an adjusted R-squared value of -0.01751 and a p-value of 0.7426. This was quite surprising, as there were 8 dst covariates used to produce the plot, and yet a negative adjusted R-squared value was produced, and a significantly large p-value as well, showing that the prediction of population count was not entirely accurate.  

## Part 2: Modeling and Predicting Spatial Data
![](Cuba_mapview3.png)
![](Cuba_rastervis.png)

text text sample text here

![](Santiago_de_Cuba_adm1_mapview.png)
![](Santiago_de_cuba_adm1_rastervis.png)

text text sample text here





