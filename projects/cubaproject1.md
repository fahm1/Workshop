# Cuba Project 1

```text
#install.packages("tidyverse", dependencies = TRUE)
#install.packages("sf", dependencies = TRUE)

library(tidyverse)
library(sf)

#tidyverse masks filter() and lag() from dplyer, to use dplyr for those functions, use dplyr::filter(), etc. 


setwd("~/R/Wicked_Problems/Data")

cub_int <- sf::read_sf("gadm36_CUB_shp/gadm36_CUB_0.shp")
cub_adm1 <- sf::read_sf("gadm36_CUB_shp/gadm36_CUB_1.shp")
cub_adm2 <- sf::read_sf("gadm36_CUB_shp/gadm36_CUB_2.shp")

ggplot() +
  geom_sf(data = cub_adm2,
          size = 0.25,
          color = "bisque2",
          fill = "beige",
          alpha = 0.5) + 
  geom_sf_text(data = cub_adm2,
               aes(label = NAME_2),
               size = 0.6,
               color = "firebrick1") + 
  geom_sf(data = cub_int,
          size = 0.80,
          color = "darksalmon",
          fill = "beige",
          alpha = 0.5) +
  geom_sf_text(data = cub_int,
               aes(label = NAME_0),
               nudge_x = 0, 
               nudge_y = -0.40,
               size = 5,
               color = "firebrick1") +
  geom_sf(data = cub_adm1,
          size = 0.50,
          color = "bisque2",
          fill = "beige",
          alpha = 0.4) +
  geom_sf_text(data = cub_adm1,
               aes(label = NAME_1),
               size = 1.0,
               color = "firebrick1") 

ggsave("Cuba_Plot.png", height = 12, width = 17, units = 'in')

new_sf_obj <- cub_adm1 %>%
  filter(variable == "Ciudad de la Habana")

cub_adm2 %>%
  filter(variable == "Ciudad de la Habana") %>%
  ggplot() +
  geom_sf(size = 2) +
  geom_sf_text(aes(label = "Ciudad de la Habana"),
               size = 1) + 
  geom_sf(data = ) +
  xlab("longitude") + ylab("lattitude") + 
  ggtitle("Habana", subtitle = "Cuba's most populous "Provincia"") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(h.just = 0.5))

ggsave("Habana.png")
```

