install.packages("tidyverse")

library("tidyverse")
unicef_metadata <- read_csv("unicef_metadata.csv")
unicef_indicator_1 <- read_csv("unicef_indicator_1.csv")

# Read the CSV files
unicef_metadata <- read_csv("unicef_metadata.csv")
unicef_indicator_1 <- read_csv("unicef_indicator_1.csv")

# Join the data frames
data_join <- left_join(unicef_metadata, unicef_indicator_1, by = c("country", "Year"))

install.packages("ggplot2")
install.packages("maps")
library(maps)
library(ggplot2)
map_world <- map_data("world")

# Merge world map data with your specific data for 2022
world_map_2022 <- merge(world_map, data_2022, by = "country", all.x = TRUE)


# Plot world map for 2022
ggplot() +
  geom_polygon(data = unicef_indicator_1, aes(x = long, y = lat, group = group, fill = value), 
               color = "black") +
  scale_fill_gradient(low = "lightblue", high = "darkblue", name = "Value") + 
  filter(Year == 2021)
