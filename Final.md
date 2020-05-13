# Final Project Individual Deliverable: Cuba

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

To delve deeper into population analysis, I attempted to predict the population spread in the province of Santiago de Cuba using several covariates, such as water, topography, slope, night-time lights, herbaceous cover, and urban and bare areas. With these predictors, I was able to judge where people may live by using the principle that where exists more night-time lights, there generally exists more people, and so on for all of the covariates. These population count predictions were then compared to real-world counts provided by WorldPop. The map above overlapped with OpenStreetMap shows the comparison, by showing whether the population counts predicted by using all covariates are over-predictions or under-predictions when compared to the actual spatial distribution of population. The regions shaded in purple generally represent regions of high population density—such as the province's capital city of Santiago de Cuba in the south—which have under-predicted population values provided by the covariates. The three-dimensional map above depicts the population spread by individual municipalities, showing that the highest concentration of population within the province lies in the capital city. The regions of high population density are marked in purple—signifying an underestimate by use of the covariates—likely due to multi-story buildings—which are common to urban areas—are not accurately accounted for by the covariates. On the flip side, it is also seen that regions of relatively low population take on a orange-yellow shade, as the covariates slightly over-predict the population counts in these areas. 

## Analyzing Human Settlements, Roadways, and Healthcare Facilities

![](combined.png)

To analyze how roadways and healthcare facilities are correlated with urban areas, I chose to look at the municipalities of Mayari (population ~ 105,000) and Banes (~78,000) in the Holguin province. Looking at this plot, the top half of the land is the municipality of Banes, while the bottom half is Mayari.The plot above shows the de facto boundaries of urbanized areas throughout these municipalities, as well the road network and health care services. The thick lines that run between the municipalities represent primary roads—which branch off to nearly every identified urbanized area—while the thinner lines represent secondary roads. The colored dots represent the position and type of health care service, with the 16 red dots representing hospitals, the 5 green dots represting clinics, and the blue dots representing either doctors (5), dentists (2), or pharmacies (8). The 2 blue dots and 1 red dot in the middle of the plot without land are representative of the health care services available in the relatively small neighboring municipality of Antilla, which is also in the Holguin province. 


Judging by this plot, it's apparent to see how road networks were created to connect the urbanized areas, as just about each of the distinguished areas are accessible by a roadway. Likewise, it is apparent that most of the healthcare facilities are found in the urban areas. Strictly from this two-dimensional plot, it is not immediately apparent why certain regions seem to be relatively devoid of any urbanized areas, and therefore roads and healthcare facilities, while some areas have many. In order to attain a clearer interpretation, a three-dimensional plot fills in some of the blanks. 

***

![](full_final_topdown.png)
![](full_final.png)

These plots also represent Mayari and Banes, but include topographical data to develop a third-dimension. On the top left is a bird’s eye or top down view of the combined municipalities as if you were looking at a traditional map. Of course, the compass points towards north, and the scalebar along the left shows that the region is just about 80 kilometers long. On the bottom is the three-dimensional plot that clearly expresses topographical information. The labeled location is the town of Banes, which is located inside the similarly named Banes municipality. It is the single largest town or settlement between the combined municipalities with a 2012 census population of just about 35,000 individuals.

Looking at these plots, I think it’s pretty apparent that topography has impacted the development of urban areas, as you can see in the Mayari municipality a relatively large urban area and a couple other smaller urban areas right at the foot of the mountains, while no urban areas exist among the mountainous area in the south. Likewise, in the Banes municipality, you can see the prime urban area exists on relatively flat land as well. In this way, you can also see how the development of healthcare facilities was affected by topography, as the healthcare facilities seem to be located within urban areas, and the development of urban areas was influenced by topography. Similarly for the development of road networks, the primary roads in the Mayari municipality for the most part seem to run east to west just at the foot of the mountains, showing how topography led to specifying where road networks could develop. Of course, a big aspect of the road networks is connecting urban areas, further showing how topography influenced the development of these road networks.

Judging by these maps, it is likely that this region could still be considered as developing. While Banes seems to have a fair spread of healthcare facilities in its urbanized areas, the more topographically ailed municipality of Mayari seems to have a relatively limited number and variety of facilities. For example, take the town of Mayari that has a population of around 27,000 (the largest polygon on the northern end of the Mayari municipality). In it, there are only 3 blue dots seen, representative of only dentists and pharmacies (not doctors, even though they are also represented by blue dots). Considering the relatively large population count and size, to see that hospitals are noticeably absent is quite alarming. At the same time, however, the road systems do seem to be quite well developed, as most major regions are connected by major roadways. 





















