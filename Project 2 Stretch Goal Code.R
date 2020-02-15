rm(list=ls(all=TRUE))

setwd("~/R/Wicked_Problems/Data")

#install.packages("raster", dep = TRUE)
#install.packages("doParallel", dep = TRUE)
#install.packages("snow", dep = TRUE)
#install.packages("rayshader", dep = TRUE)
#install.packages("remotes")
#remotes::install_github("tylermorganwall/rayshader", dependencies = TRUE)
#install.packages("pkgbuild", dep = TRUE)

Sys.getenv("R_LIBS_USER")

library(tidyverse)
library(sf)
library(raster)
library(doParallel)
library(snow)
library(ggplot2)
library(rayshader)
library(remotes)
library(pkgbuild)

#detectCores()
#ncores <- detectCores() - 1
#beginCluster(ncores)
#pop_vals_adm1 <- raster::extract(cub_pop20, cub_adm1, df = TRUE)
#endCluster()
#save(pop_vals_adm1, file = "pop_vals_adm1.RData")
load("pop_vals_adm1.RData")

#beginCluster(ncores)
#pop_vals_adm2 <- raster::extract(cub_pop20, cub_adm2, df = TRUE)
#endCluster()
#save(pop_vals_adm2, file = "pop_vals_adm2.RData")
load("pop_vals_adm2.RData")

cub_pop20 <- raster::raster("Project_2/cub_ppp_2020.tif")
#cub_pop20

cub_int <- read_sf("gadm36_CUB_shp/gadm36_CUB_0.shp")
cub_adm1 <- read_sf("gadm36_CUB_shp/gadm36_CUB_1.shp")
cub_adm2 <- read_sf("gadm36_CUB_shp/gadm36_CUB_2.shp")
#cub_adm1

totals_adm1 <- pop_vals_adm1 %>%
  group_by(ID) %>%
  summarize(cub_ppp_2020 = sum(cub_ppp_2020, na.rm = TRUE))

totals_adm2 <- pop_vals_adm2 %>%
  group_by(ID) %>%
  summarize(cub_ppp_2020 = sum(cub_ppp_2020, na.rm = TRUE))

#sum(totals_adm1$cub_ppp_2020)
cub_adm1 <- cub_adm1 %>%
  add_column(cub_pop20 = totals_adm1$cub_ppp_2020)

cub_adm2 <- cub_adm2 %>%
  add_column(cub_pop20 = totals_adm2$cub_ppp_2020)



ggplot(cub_adm1) +
  geom_sf(aes(fill = cub_pop20)) +
  geom_sf_text(aes(label = NAME_1),
               color = "black",
               size = 1) +
  scale_fill_gradient(low = "yellow", high = "red")

ggsave("cub_pop20_adm1.png", height = 12, width = 17, units = 'in')

ggplot(cub_adm2) +
  ggtitle("Cuba")+ 
  xlab("lattitude") +
  ylab("longitude") +
  geom_sf(data = cub_adm2, 
          aes(fill = log(cub_pop20))) +
  geom_sf_text(data = cub_adm2,
               aes(label = NAME_2),
               color = "black",
               size = 1) +
  geom_sf(data = cub_adm1,
          aes(fill = log(cub_pop20))) +
  geom_sf_text(data = cub_adm1, 
               aes(label = NAME_1),
               alpha = 0.5) +
  scale_fill_gradient2(low = "green", mid = "orange", high = "firebrick1", midpoint = 11.0) +
  theme(
    panel.background = element_rect(fill = "deepskyblue2",
                                    color = "deepskyblue2",
                                    size = 0.5, linetype = "solid"),
    #  panel.grid.major = element_line(size = 0.5, linetype = 'solid',
    #                                 color = "paleturquoise1"),
    # panel.grid.minor = element_line(size = 0.05, linetype = 'solid',
    #                                color = "paleturquoise1"),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank())
#labs(title = "Cuba ur mother",
#    x = "lattitude", y = "longitude"))
#     xlab = "lattitude", ylab = "longitude"))+
#xlab("ur mother"))
# ggtitle("Cuba", subtitle = "very yum"))

ggsave("cub_pop20_adm2.png", height = 24, width = 34, units = 'in')


#plot(cub_pop20)
#plot(st_geometry(cub_int),add = TRUE)



ggcub_adm2 <- ggplot(cub_adm2) +
  geom_sf(aes(fill = log(cub_pop20))) +
  scale_fill_gradient2(low = "green", mid = "orange", high = "firebrick1", midpoint = 11.0) +
  ggtitle("CUBE")

plot_gg(ggcub_adm2, multicore = TRUE, width = 6, height = 2.7, fov = 70,
        water = TRUE, waterdepth = 0.25) +
  render_movie(filename = "renderdepthtest1", fps = 120, frames = 1440) +
  add_water(color = "imhof1")
























ggplot(cub_adm2) +
  ggtitle("Cuba")+ 
  xlab("lattitude") +
  ylab("longitude") +
  geom_sf(data = cub_adm2, 
          aes(fill = log(cub_pop20)),
          alpha = 1) +
  geom_sf_text(data = cub_adm2,
               aes(label = NAME_2),
               color = "black",
               size = 1) +
  geom_sf(data = cub_adm1,
          aes(fill = log(cub_pop20))) +
  geom_sf_text(data = cub_adm1, 
               aes(label = NAME_1)) +
  scale_fill_gradient2(low = "green", mid = "orange", high = "firebrick1", midpoint = 11.0) +
  theme(
    panel.background = element_rect(fill = "deepskyblue2",
                                    color = "deepskyblue2",
                                    size = 0.5, linetype = "solid"),
    #  panel.grid.major = element_line(size = 0.5, linetype = 'solid',
    #                                 color = "paleturquoise1"),
    # panel.grid.minor = element_line(size = 0.05, linetype = 'solid',
    #                                color = "paleturquoise1"),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank())
#labs(title = "Cuba ur mother",
#    x = "lattitude", y = "longitude"))
#     xlab = "lattitude", ylab = "longitude"))+
#xlab("ur mother"))
# ggtitle("Cuba", subtitle = "very yum"))









ggplot(cub_adm2) +
  ggtitle("Cuba")+ 
  xlab("lattitude") +
  ylab("longitude") +
  geom_sf(data = cub_adm1,
          size = 0.25,
          color = "bisque2",
          fill = "beige",
          alpha = 0.5) +
  geom_sf_text(data = cub_adm1, 
               aes(label = NAME_1),
               color = "black",
               size = 1) +
  geom_sf(data = cub_adm2, 
          aes(fill = log(cub_pop20))) +
  geom_sf_text(data = cub_adm2,
               aes(label = NAME_2),
               color = "black",
               size = 1) +
  scale_fill_gradient2(low = "green", mid = "orange", high = "firebrick1", midpoint = 11.0) +
  theme(
    panel.background = element_rect(fill = "deepskyblue2",
                                    color = "deepskyblue2",
                                    size = 0.5, linetype = "solid"),
    #  panel.grid.major = element_line(size = 0.5, linetype = 'solid',
    #                                 color = "paleturquoise1"),
    # panel.grid.minor = element_line(size = 0.05, linetype = 'solid',
    #                                color = "paleturquoise1"),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank())
#labs(title = "Cuba ur mother",
#    x = "lattitude", y = "longitude"))
#     xlab = "lattitude", ylab = "longitude"))+
#xlab("ur mother"))
# ggtitle("Cuba", subtitle = "very yum"))

ggsave("Cuba_Image_Final.png", height = 24, width = 34, units = 'in')




















ggplot() +
  ggtitle("Cuba")+ 
  xlab("lattitude") +
  ylab("longitude") +
  geom_sf(data = cub_adm1,
          size = 0.25,
          color = "bisque2",
          fill = "beige",
          alpha = 0.5) +
  geom_sf_text(data = cub_adm1, 
               aes(label = NAME_1),
               color = "black",
               size = 1) +
  geom_sf(data = cub_adm2, 
          aes(fill = log(cub_pop20))) +
  geom_sf_text(data = cub_adm2,
               aes(label = NAME_2),
               color = "black",
               size = 1) +
  scale_fill_gradient2(low = "green", mid = "orange", high = "firebrick1", midpoint = 11.0) +
  theme(
    panel.background = element_rect(fill = "deepskyblue2",
                                    color = "deepskyblue2",
                                    size = 0.5, linetype = "solid"),
    #  panel.grid.major = element_line(size = 0.5, linetype = 'solid',
    #                                 color = "paleturquoise1"),
    # panel.grid.minor = element_line(size = 0.05, linetype = 'solid',
    #                                color = "paleturquoise1"),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank())
#labs(title = "Cuba ur mother",
#    x = "lattitude", y = "longitude"))
#     xlab = "lattitude", ylab = "longitude"))+
#xlab("ur mother"))
# ggtitle("Cuba", subtitle = "very yum"))

ggsave("Cuba_Image_Final.png", height = 24, width = 34, units = 'in')


































