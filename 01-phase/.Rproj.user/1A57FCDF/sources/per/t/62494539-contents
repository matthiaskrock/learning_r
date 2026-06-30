library(tidyverse)

# Left
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()

# Right
ggplot(mpg, aes(x = displ, y = hwy, shape = class)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "purple")


# Exercises 9.2.1

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(
    color = "pink",
    fill = "pink",
    shape = 24)

# adds a legend for blue but does not mean to color because it is in the aes bracket
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy, color = "blue"))

# stroke is similar to size, numbers increase size of point
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(stroke = 1)

# condition adds true or false to condition in graph
ggplot(mpg, aes(x = displ, y = hwy, color = displ < 5)) +
  geom_point()

# 9.3

# Left
ggplot(mpg, aes(x = displ, y = hwy, shape = drv)) + 
  geom_smooth()

# Right
ggplot(mpg, aes(x = displ, y = hwy, linetype = drv)) + 
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy, color = drv)) + 
  geom_point() +
  geom_smooth(aes(linetype = drv))

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_point(
    data = mpg |> filter(class == "2seater"), 
    color = "red"
  ) +
  geom_point(
    data = mpg |> filter(class == "2seater"), 
    shape = "circle open", size = 3, color = "red"
  )

# Exercises 9.3.1

#4
ggplot(mpg, aes(x = displ, y = hwy, color = drv))+
  geom_point(color = "white", size = 5)+
  geom_point(shape = 19, size = 2)

# 9.4 facets

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point() + 
  facet_wrap(~cty)

ggplot(mpg) + 
  geom_point(aes(x = drv, y = cyl))

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ cyl, nrow = 3)

ggplot(mpg, aes(x = displ)) + 
  geom_histogram() + 
  facet_grid(drv ~ .)

ggplot(mpg, aes(x = displ)) + 
  geom_histogram() +
  facet_grid(. ~ drv)

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~drv, ncol = 1)

ggplot(diamonds, aes(x = cut, y = after_stat(prop))) + 
  geom_bar()

ggplot(diamonds, aes(x = cut, fill = color, y = after_stat(prop), group = 1)) + 
  geom_bar()

ggplot(mpg, aes(x = cty, y = hwy)) + 
  geom_jitter(width = 1)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(position = "identity")

