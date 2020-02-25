# Project 1 - Cuba

## Part 1: Projecting, Plotting and Labelling Administrative Subdivisions
![](https://github.com/fahm1/Workshop/blob/master/Cuba_Plot.png)

This map depicts the nation of Cuba, as well as its first and second administrative subdivisions of 15 provinces and 168 municipalities. The data utilized to create this map is dated for 2020. The name of the country was made large and was positioned so that it did not cover the names of any provinces or municipalities. Province names were kept the same red-ish (firebrick1) color, but were made smaller, while municipality names were even smaller and a significantly lighter shade, so as to make it easy to distinguish between administrative levels and avoid confusion. Municipalities are separated by a relatively thin border line, while provinces and the nation are surrounded by thicker border lines. Due to there being a higher concentration of municipalities in the north-west part of Cuba in the province "Ciudad de la Habana," I opted to increase the size and resolution of the map, so that the text for the individual municipalities wasn't so jumbled together. The largest issue for me was understanding layers when using ggplot(), so when ordering the different administrative subdivisions, one may block out the other, and I didn't know that it was something that I needed to be careful of for a while. I enjoyed customizing the map with various colors so that it was of my liking. To find the perfect colors, I found a .pdf file online which listed just about every color that is usable on RStudio (at least without downloading a package). 

## Part 2: Extracting Populations from a Raster and Aggregating to each Unit




## Part 3:
![](https://github.com/fahm1/Workshop/blob/master/.gitbook/assets/cuba.png)

The final part of the project shows a population density map and bar graph for Cuba in 2020. Both the map and bar graph are specific to the first administrative level in Cuba, which is comprised of 15 provinces. Both representations of population data also show the percent of the total population living within each individual province both by percent/numerical values, as well as by color, with a legend on the right defining the colors. The graphs accurately present the data, as it is true as of 2020 that the province "Ciudad de la Habana" has the greatest population between the provinces, and likewise all of the other data points seem to run true to form. The population seems to be fairly even throughout the nation, save for a slight above-average population count in the south-eastern portion, as well as the apparent spike in population in the the one province in the north-west. The numbers within the provinces on the map represent the population in persons/km^2. 

To create these, following the instructions on the GitHub page proved to be sufficient for nearly the entire project. Only when using the  function did I have to search up how to correctly use the function, as I did not know exactly how to specify the spatial plot or the bar plot. The sizing of the final produced image also proved to be difficult, as Cuba is more wide than it is tall, while the bar plot by default seemed to be much taller, the combination of the two leading to a lot of empty white spaces on a final image. However, forcing the final image size to have a height of 3 rather than individually working on both of the plot's individual sizes proved to be a quick fix. 
