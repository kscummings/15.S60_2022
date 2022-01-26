library(dplyr)
library(forcats)
library(ggplot2)
library(purrr)
library(readr)


## Setup with Snakemake

input_files <- snakemake@input
output_file <- snakemake@output[[1]]


## Load results and plot

results <- map(input_files, read_csv) %>%
  bind_rows() %>%
  mutate_at(vars(id), as_factor)

p <- ggplot(results) +
  geom_col(aes(x = id, y = num_sum))

ggsave(output_file, p)
