# Read in the "hotel_bookings.csv" data and store it in a data frame called "hotel_bookings"
hotel_bookings <- read.csv("hotel_bookings.csv")

# Install and load the 'ggplot2' package
install.packages('ggplot2')
library(ggplot2)

# Create a scatterplot showing the relationship between the number of days in advance a booking was made (x-axis) and the number of children in the party (y-axis)
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Create a scatterplot showing the relationship between the number of weekend nights a guest stayed (x-axis) and the number of children in the party (y-axis)
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))