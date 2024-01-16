# ui.R

library(shiny)

fluidPage(
  titlePanel("DataScience Project 2023"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("annee", label = "Choisir une année :",
                   choices = c("2018", "2019", "2020", "2021", "2022"),
                   selected = "2018")
    ),
    mainPanel(
      # Contenu principal de la page
    )
  )
)
