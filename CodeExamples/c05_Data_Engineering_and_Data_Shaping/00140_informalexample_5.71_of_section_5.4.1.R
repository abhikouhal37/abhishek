# informalexample 5.71 of section 5.4.1 
# (informalexample 5.71 of section 5.4.1)  : Data engineering and data shaping : Multi-table data transforms : Combining two or more ordered data frames quickly 

library("data.table")

dt <- as.data.table(rbind_base)
grouping_column <- "table"
dt[ , max_price := max(price), by = eval(grouping_column)]

print(dt)

