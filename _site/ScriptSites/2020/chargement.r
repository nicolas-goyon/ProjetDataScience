
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

if(!requireNamespace("FactoMineR", quietly = TRUE)){
  install.packages("FactoMineR")
}
library(FactoMineR)


remove_rows_by_value <- function(data, column_name, value_to_remove) {
  data_filtered <- subset(data, !(data[[column_name]] == value_to_remove))
  return(data_filtered)
}

raw_data <- read.csv("data_2020.csv", sep = ";")



# Lists specifying which columns to convert to factors and numeric
factor_cols <- c("Date", "identifiant", "Genre", "Annee_diplome","Type_formation","Filiere","Situation","Secteur","Nature_contrat", "France","Region", "Pays", "Taille_entreprise", "Nom_entreprise", "Departement", "Intitule_poste", "Secteur_activite")
numeric_cols <- c("Anciennete", "Salaire_annuel", "Responsabilite_hierarchique", "Responsabilite_budget", "Responsabilite_equipe", "Responsabilite_projet", "Satisfaction_globale", "Saitisfaction_relations", "Satisfaction_salaire", "Satisfaction_autonomie", "Satisfaction_localisation")

# Convert columns to factors
raw_data[factor_cols] <- lapply(raw_data[factor_cols], as.factor)

# Convert columns to numeric
raw_data[numeric_cols] <- lapply(raw_data[numeric_cols], as.numeric)
