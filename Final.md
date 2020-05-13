# Final Project Deliverable: Cuba

## Political Subdivisions

![](Cuba_Plotf.png)


The nation of Cuba is divided into 15 provinces (adm1) and 168 municipalities (adm2) within those provinces. The capital, La Havana, lies in the northwest in a densely populated region. Throughout these projects, I have focused primarily on the Holguin and Santiago de Cuba provinces, both of which lie in the southeast. The Holguin prvoince directly borders the Atlantic Ocean to the north, while the Santiago de Cuba province directly borders the Caribbean Sea to the south. I also went deeper into the Holguin province in order to analyze the Mayari and Banes municipalities. The data behind these boundaries was dated for 2020 and sourced from GADM. 

![](Rplot18.jpg)
![](Rplot24.jpg)

## Population Analysis

![](Cuba.png)

The plot above is a population density map and bar graph for Cuba in 2020. Both the map and bar graph are specific to the first administrative level in Cuba: the provinces. Both representations of population data also show the percent of the total population living within each individual province both by percent/numerical values, as well as by color, with a legend on the right defining the colors. As of 2018, the total population of Cuba is estimated to be 11.34 million (World Bank, U.S. Census Bureau). By both the map and graph, it is apparent that there is a spike in population in the northwest in the province of Ciudad de la Habana, which is where slightly over 2 million people as well as the nation's capital reside. The bar graph also shows that the provinces of Santiago de Cuba and Holguin are the second and third most populated provinces respectively. 

***

![](Cuba_Correctedf.png)

The log plot above more specifically represents the populations of the 168 municipalities (adm2) of Cuba. The most apparent spike in population appears to be in the southeast, in the municipality of Santiago de Cuba (not to be confused with the similarly named province), which has a population of just about 470,000. It's interesting to note that even though a very apparent relatively high population count was observed in the Ciudad de la Habana province in the earlier combined plot, on a municipality level, the tame shade of orange represents that no one municipality within the province has a starkly high population compared to the rest of the nation. 

***

![](Santiago_de_Cuba_adm1_mapview.png)
![](Santiago_de_cuba_adm1_rastervis.png)

Similarly to the graphs before, these two graphs represent the population of the province of Santiago de Cuba. Santiago de Cuba is the second most populated province in Cuba, just after the capital province, Havana (La Habana). The three-dimensional map depicts the population spread by individual municipalities. The apparent peak in population in the southeast is due to the capital city of the province—also known as Santiago de Cuba—which is the most populous municipality in Cuba. Again, population counts are not represented by their log values. The map overlapped with OpenStreetMap shows whether the population counts predicted by using all covariates (mentioned above) are over-predictions or under-predictions when compared to the actual spatial distribution of population estimated by WorldPop. The regions shaded in purple represent regions of high population density—such as the province's capital city—which have under-predicted population values provided by the covariates. Just as with the Cuba maps above, one reasonable explanation may be that multi-story buildings are not accurately accounted for by the covariates. Also seen in this map is that regions of relatively low population take on a orange-yellow shade, as the covariates slightly over-predict the population counts in these areas. 


































