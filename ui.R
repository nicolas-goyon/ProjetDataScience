# ui.R
library(shiny)

fluidPage(
  sidebarLayout(
    sidebarPanel(
      radioButtons("annee", label = "Choisir une année:",
                   choices = c("2018", "2019", "2020", "2021", "2022","2023", "Études supplémentaires"))
    ),
    mainPanel(
      uiOutput("intro"),
      uiOutput("data")
    )
  )
)
