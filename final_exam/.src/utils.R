library(readr)
library(dplyr)

load_dataset_cereal <- function(sid) {
  set.seed(sid - 2147483647)
  
  # Handle US Cereal dataset
  cereal = read_csv("data/UScereal.csv")

  numer_col <- c("calories", "protein", "fat", "sodium", "fibre", "carbo", "sugars", "potassium")
  
  for (col in numer_col) {
    cereal[col] = abs(jitter(pull(cereal, col), factor = 50))
  }
  
  cereal["vitamins"] = sample(pull(cereal, 'vitamins'))
  
  # Randomize LE values
  return(cereal)
}

load_dataset_drugbp <- function(sid) {
  set.seed(sid - 2147483674)
  
  # Handle Drug BP dataset
  drug_bp = read_csv("data/drug_bp.csv")
  
  numer_col <- c("pretreat_bp", "posttreat_bp")
  
  for (col in numer_col) {
    drug_bp[col] = abs(jitter(pull(drug_bp, col), factor = 50))
  }
  
  return(drug_bp)
}