# informalexample 5.104 of section 5.4.2 
# (informalexample 5.104 of section 5.4.2)  : Data engineering and data shaping : Multi-table data transforms : Principled methods to combine data from multiple tables 

library("data.table")

quotes <- data.table(
  bid = c(5, 5, 7, 8),
  ask = c(6, 6, 8, 10),
  bid_quantity = c(100, 100, 100, 100),
  ask_quantity = c(100, 100, 100, 100),
  when = as.POSIXct(strptime(
    c("2018-10-18 1:03:17", 
      "2018-10-18 2:12:23", 
      "2018-10-18 2:15:00", 
      "2018-10-18 2:17:51"), 
    "%Y-%m-%d %H:%M:%S")))

print(quotes)

