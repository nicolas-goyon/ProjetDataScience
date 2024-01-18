# ui.R
library(shiny)
# Liste des années et des dossiers
annees <- c("2018", "2019", "2020", "2021", "2022", "2023")
dossiers <- c("homme_femme", "afc_genre", "dates_diplome","type_formation", "filiere", "nature_contrat","anciennete", "etranger", "region", "secteur")


fluidPage(
  titlePanel("Sélection d'année et de diagramme"),
  sidebarLayout(
    sidebarPanel(
      selectInput("annee", "Sélectionnez une année :", choices = annees),
      selectInput("fichier", "Sélectionnez un diagramme :", choices = dossiers)
    ),
    mainPanel(
      uiOutput("data")
    )
  )
)
