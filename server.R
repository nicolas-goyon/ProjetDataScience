# server.R
library(shiny)

function(input, output) {
  observe({
    # Observer pour réagir aux changements dans les boutons radio
    output$anneeaff <- renderText({
      input$annee
    })
  })
}
