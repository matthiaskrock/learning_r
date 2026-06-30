library(tidyverse)

tibble(penguins)

penguins |> 
  ggplot(aes(x = bill_len, y = bill_dep, color = species)) + 
  geom_point() + 
  labs(
    caption = "Data comes from ..."
  )

penguins |> 
  ggplot(aes(x = flipper_len, y = body_mass, color = bill_dep)) + 
  geom_point(na.rm = TRUE)+
  geom_smooth() 
    

ggplot(
  data = penguins,
  mapping = aes(x = flipper_len, y = body_mass, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

penguins |> 
  ggplot(aes(x = bill_len))+
  geom_histogram(bins = 20)

tibble(mpg)

library(nycflights13)
tibble(flights)

flights |> 
  filter(arr_delay > 120)

flights |> 
  filter(dest == "IAH" | dest == "HOU" )

flights |>
  arrange(desc(dep_delay)) |> 
  arrange(dep_time)

flights |> 
  select(dep_time, sched_dep_time, dep_delay)

flights |> 
  select(starts_with("dep") | starts_with("arr"))

variables <- c("year", "month", "day", "dep_delay", "arr_delay")

flights |> 
  select(any_of(variables))

flights |> 
  relocate(air_time_min = air_time)

flights |> 
  group_by(carrier) |> 
  summarize(
    avg_dep_delay = mean(dep_delay, na.rm = TRUE)
  ) |> 
  arrange(desc(avg_dep_delay))

flights |> 
  group_by( dest) |> 
  summarize(
    n(),
    avg_delay = mean(dep_delay, na.rm = TRUE)
    ) |> 
  arrange(desc(avg_delay)) 

flights |> 
  group_by(dest) |> 
  slice_max(dep_delay)

flights |> 
  group_by(hour) |> 
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE)
  ) |> 
  ggplot(aes(x = hour, y = avg_delay ))+
  geom_point()

flights |> 
  group_by(flight) |> 
  count(sort = 1)

df <- tibble(
  x = 1:5,
  y = c("a", "b", "a", "a", "b"),
  z = c("K", "K", "L", "L", "K")
)

df |>
  group_by(y)

df |>
  arrange(y)

df |>
  group_by(y) |>
  summarize(mean_x = mean(x))


table1
table2
table3

table2 |> 
  pivot_wider(
    names_from = type,
    values_from = count
  ) |> 
  mutate(
    rate = cases / population * 10000
  )

table3 |> 
  separate_wider_delim(
    cols = rate,
    delim = "/",
    names = c("cases", "population")
  ) |> 
  mutate(
    cases = as.numeric(cases),
    population = as.numeric(population),
    rate = cases / population * 10000
  )
