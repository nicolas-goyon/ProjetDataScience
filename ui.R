# ui.R
library(shiny)

fluidPage(
  titlePanel("DataScience Project 2023"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("annee", label = "Choisir une année :",
                   choices = c("2018", "2019", "2020", "2021", "2022"))
    ),
    mainPanel(
      textOutput("anneeaff")
    )
  )
)
