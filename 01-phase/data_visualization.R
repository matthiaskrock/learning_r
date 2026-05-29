library(tidyverse)
library(palmerpenguins)
library(ggthemes)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(na.rm = TRUE, aes(color = species, shape = species))+
  geom_smooth(method = "lm")+
  labs(
    title = "Body Mass and Flipper Length",
    subtitle = "Dimensions for Adelie, Chinstrap and Gentoo",
    caption = "Data come from the palmerpenguins package.",
    x = "Flipper Length (mm)", y = "Body Mass (g)"
  )+
  scale_color_colorblind()
  
ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) + 
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm")


ggplot(penguins, aes(x = fct_infreq(species)))+
  geom_bar() 

ggplot(penguins, aes(y = fct_infreq(species)))+
  geom_bar(aes(fill= species)) 

ggplot(diamonds, aes(x=carat)) + 
  geom_histogram(binwidth = 0.1)

ggplot(penguins, aes (x = body_mass_g))+
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = bill_depth_mm)
) +
  geom_point(na.rm = TRUE, )+
  geom_smooth(method = "lm")+
  scale_fill_continuous_tableau(palette = "Blue")

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )

ggplot(penguins, aes(x = species, y = body_mass_g)) + 
  geom_boxplot()

ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) + 
  geom_density(alpha = 0.5)

ggplot(mpg, aes(x = hwy, y = displ, color = cty, size = cty)) + 
  geom_point(linewidth = cty)

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) + 
  geom_point()+
  facet_wrap(~species)

ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() +
  labs(color = "Species", shape = "Species")

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")
