# Stevens et al. Reading Response

## Lightning Questions: 

1. In the readings for Tuesday and today (Stevens et al.) the authors use a technique to produce a high resolution description of the distribution of human populations across the globe. What is the name of the technique and describe in general and basic terms how it works?

The authors describe how they are using a dasymetric modeling approach--which combines national census data acquired from the various national statistics institutes for Cambodia, Vietnam, and Kenya with supporting ancillary data--along with a flexible "Random Forest" estimation technique. Random forest models are a nonparametric (no assumptions for a frequency distribution) modeling approach that builds a forest of of individual classifications or trees and improves upon bagging (machine learning accuracy) by using the best set of predictors. 

2. The random forest method used by the authors is a machine learning algorithm (ensemble method). In general terms, what is a machine learning algorithm? Within the context of this study what distinguishes a data science, machine learning method (such as random forest) from previous classical statistical approaches to describing and analyzing phenomenon and events? 

A machine learning algorithm is a finite set of clear instructions that are to be carried out using a computer to solve a problem or to perform computations. Machine learning methods, such as the random forests, distinguish themselves from classical statistical methods in that they are more efficient, can combine more covariates with less tuning and supervision, and are generally better at providing more accurate predictions. 

3. In the reading the authors use a number of geospatial covariates as predictors in their machine learning method. What were these geospatial covariates and approximately how big of a data set did they represent (in general terms)? What is the significance of big data in the estimation of machine learning methods for inferring the correlates and drivers of human population distributions? 

The authors describe how they were able to incorporate covariates such as night-time lights, topography, land cover, as well as climatic information. The random forest algorithms were responsible for choosing the most important ancillary data covariates to reduce the amount of variability left in the log population densities from the census data. The geospatial covariates represented a relatively large and valuable dataset, and the authors describe how these covariates proved to be more important that the typicallly extremely important distance-to-built land cover data. Big data--in the form of the national census' in this case--provide the base datasets upon which ancillary data and covariates improve and disaggregate so that the data is more usable. 

4. The authors' results present a remarkable improvement over previous geospatial descriptions at very high resolution, of the distribution of the human population. Within the context of human development in LMICs, what is the significance of having a highly accurate description of where each person in located across planet Earth?
text

5. Within the context of human development in LMICs, what is the relevance to your area of investigation in having a highly accurate description of where each household and person is located across planet Earth? 

text
