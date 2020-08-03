# libraries
library(packcircles)
library(ggplot2)
library(viridis)

# Read in csv files created by Python script
setwd("D:/#Viz for social good/Academics without Borders/OutData/R input")
vol <- read.csv('vol.csv')
cntry <- read.csv('cntry.csv')
disp <- read.csv('disp.csv')
part<- read.csv('part.csv')

#-----------------------------------------------------------------
#Volunteers bubble chart
# Generate the layout
packing <- circleProgressiveLayout(vol$value, sizetype='area')
packing$radius <- 0.95*packing$radius
data <- cbind(vol, packing)
dat.gg <- circleLayoutVertices(packing, npoints=50)

# Plot 
image = 
  ggplot() + 
  geom_polygon(data = dat.gg, aes(x, y, group = id, fill=id), alpha = 0.6) +
  scale_fill_viridis()+
  theme_void() + 
  theme(legend.position="none")+ 
  coord_equal()
setwd("D:/#Viz for social good/Academics without Borders/OutImg")

ggsave(image,file="vol.svg",width =3,height=3,units="cm",scale=4)

#-----------------------------------------------------------------


#-----------------------------------------------------------------
#Country bubble chart

# Generate the layout
packing <- circleProgressiveLayout(cntry$value, sizetype='area')
packing$radius <- 0.95*packing$radius
data <- cbind(cntry, packing)
dat.gg <- circleLayoutVertices(packing, npoints=50)

# Plot 
image = 
  ggplot() + 
  geom_polygon(data = dat.gg, aes(x, y, group = id, fill=id), alpha = 0.6) +
  scale_fill_viridis()+
  theme_void() + 
  theme(legend.position="none")+ 
  coord_equal()
ggsave(image,file="cntry.svg",width =3,height=3,units="cm",scale=4)

#-------------------------------------------------------------------------


#-----------------------------------------------------------------
#Discipline bubble chart

# Generate the layout
packing <- circleProgressiveLayout(disp$value, sizetype='area')
packing$radius <- 0.95*packing$radius
data <- cbind(disp, packing)
dat.gg <- circleLayoutVertices(packing, npoints=50)

# Plot 
image = 
  ggplot() + 
  geom_polygon(data = dat.gg, aes(x, y, group = id, fill=id), alpha = 0.6) +
  scale_fill_viridis()+
  theme_void() + 
  theme(legend.position="none")+ 
  coord_equal()
ggsave(image,file="disp.svg",width =3,height=3,units="cm",scale=4)

#-------------------------------------------------------------------------

#-----------------------------------------------------------------
#Partnering Institution bubble chart

# Generate the layout
packing <- circleProgressiveLayout(part$value, sizetype='area')
packing$radius <- 0.95*packing$radius
data <- cbind(part, packing)
dat.gg <- circleLayoutVertices(packing, npoints=50)

# Plot 
image = 
  ggplot() + 
  geom_polygon(data = dat.gg, aes(x, y, group = id, fill=id), alpha = 0.6) +
  scale_fill_viridis()+
  theme_void() + 
  theme(legend.position="none")+ 
  coord_equal()
ggsave(image,file="part.svg",width =3,height=3,units="cm",scale=4)

#-------------------------------------------------------------------------
