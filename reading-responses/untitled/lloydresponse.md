# Lloyd et al. Reading Response

## Fahmi Islam

Perspective Question: In the Lloyd et al. article, the authors introduce a method that uses a number of different openly available geospatial datasets in order to produce high resolution, global gridded descriptions of human populations. Describe the geospatial datasets the authors are using in their methodology. How is their method an improvement when compared to a conventional census? Are you able to describe how the authors use a number of different geospatial layers with their data science method in order to produce a high resolution, global gridded description of human population?

Response: So as to produce high resolution gridded descriptions of human populations, the authors describe how non-spatial data--typically in the form of tabulated descriptions of populations within an administrative region--is utilized in unison with spatially explicit administrative boundary data \(I believe this is what GADM may be used for?\) as well as an areal-weighting method. This areal-weighted interpolation estimates population values for a vector data set while making the assumption that uniform distribution exists--that populations are spread out evenly throughout a region--which is rarely seen to be present. This method allows for the disaggregation of population from census data, and allows it to be put into grid cells which may be projected to produce a portrayal of the data sets. However, this is but one method for modelling, as alternate approaches may utilize ancillary spatial data, which builds upon other geospatial data to depict populated areas.

The authors also describe how WorldPop has made great efforts in producing spatial data sets, as they have constructed an open-access archive of 3 arc-second \(100 meters at the equator\) and 30 arc-second \(1 kilometer at the equator\) resolution gridded data. These high resolution data sets allow for improved mapping at refined spatial scales.

