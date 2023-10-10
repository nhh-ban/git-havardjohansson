library(tidyverse)

raw_data <- readLines(con = "https://www.sao.ru/lv/lvgdb/article/suites_dw_Table1.txt")

separator_line_index <- which(raw_data == "-------------------+-------+-------+--------+---------+---------+------+------+-----------------+-------+-----------+-------")

data <- raw_data[(separator_line_index + 1):length(raw_data)]

df <- read.table(text = data, sep="\t")




