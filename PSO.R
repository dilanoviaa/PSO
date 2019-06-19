bank_additional_full <- read_delim("D:/Mahasiswa/Data Mining/Projek/bank-additional/bank-additional-full.csv", 
                                   +     ";", escape_double = FALSE, trim_ws = TRUE)

unique(bank_additional_full$job)
library(caret)
data <- dummyVars(" ~ .", data = bank_additional_full)
df <- data.frame(predict(data, newdata = bank_additional_full))

bank_additional_full$job <- NULL
