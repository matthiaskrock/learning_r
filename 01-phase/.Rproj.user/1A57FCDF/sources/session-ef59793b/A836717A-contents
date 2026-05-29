library(tidyverse)
install.packages("nycflights13")
library(nycflights13)

flights |> 
  filter(month == 1 & day == 1)

flights |> 
  arrange(desc(dep_delay))

flights |> 
  distinct(origin, dest)

flights |> 
  filter(arr_delay >= 120)

flights |>
  filter(dest == "IAH" | dest == "HOU")

flights |> 
  distinct(carrier)

flights |> 
  filter(carrier %in% c("UA", "AA", "DL")) |>
  arrange(carrier)

flights |> 
  filter(month %in% c(7, 8, 9))

flights |>
  arrange(desc(air_time))|>
  tail()

flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)
  
flights |>
  arrange(desc(dep_delay))

flights |>
  arrange(dep_time)

flights |>
  arrange(air_time)

flights |>
  distinct(month, day)

flights |>
  arrange(desc(distance))|>
  select(distance)

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1
  )

flights |>
  select(dep_time, sched_dep_time, dep_delay)

flights |>
  select(starts_with("arr") | starts_with("dep"))

flights |>
  select(month, month)

variables <- c("year", "month", "day", "dep_delay", "arr_delay")

flights |>
  select(any_of(variables))

flights |> select(contains("TIME"))

flights |>
  relocate(air_time_min = air_time, 
         .before = 1)
  

flights |>
  group_by(carrier) |> 
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE)) |> 
  arrange(desc(avg_delay))

flights |>
  group_by(dest) |> 
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE)) |> 
  arrange(desc(avg_delay))

flights |> 
  group_by(dest) |> 
  slice_max(dep_delay) |> 
  arrange(dep_delay)

flights |>
  group_by(dep_time) |> 
  summarize(avg_delay = mean(dep_delay, na.rm = TRUE)) |> 
  ggplot(aes(x = dep_time, y = avg_delay)) + 
    geom_point()
 # ggplot(aes(x=dep_time, y= dep_delay))+
  #geom_point()

flights |>
  group_by(month) |> 
 count(month, sort = -1) 

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

df |>
  group_by(y, z) |>
  summarize(mean_x = mean(x))

df |>
  group_by(y, z) |>
  summarize(mean_x = mean(x), .groups = "drop")

df |>
  group_by(y, z) |>
  summarize(mean_x = mean(x))

df |>
  group_by(y, z) |>
  mutate(mean_x = mean(x))
