library(tidyverse)
library(janitor)

students <- read_csv("https://pos.it/r4ds-students-csv", na = c("N/A", ""))

students |> 
  rename(
    student_id = `Student ID`,
    full_name = `Full Name`
  )

students |> 
  janitor::clean_names() |> 
  mutate(
    meal_plan = factor(meal_plan),
    age = parse_number(if_else(age == "five", "5", age))
    
    )

read_csv(I("x,y\n1,'a,b'"), quote = "'") # reads the a,b as a single value

read_csv("a,b\n1,2,3\n4,5,6")
read_csv("a,b,c\n1,2\n1,2,3,4")
read_csv("a,b\n\"1")
read_csv("a,b\n1,2\na,b")
read_csv("a;b\n1;3")

annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)

annoying |> 
  rename(
    one = '1',
    two = '2'
  ) |> 
  mutate(
    three = two/one
  )

  ggplot(aes(x = one, y = two)) +
  geom_point()
  
  simple_csv <- "
  x
  10
  .
  20
  30"
df <- read_csv(
  simple_csv, 
  col_types = list(x = col_double())
  )

  problems(df)

read_csv(simple_csv, na = ".")  


sales_files <- c(
  "https://pos.it/r4ds-01-sales",
  "https://pos.it/r4ds-02-sales",
  "https://pos.it/r4ds-03-sales"
)
read_csv(sales_files, id = "file")


write_csv(students, "students.csv")
students
