function(input, output) {
  observe({
    # Observer pour réagir aux changements dans les boutons radio
    print(paste("Année sélectionnée :", input$annee))
  })
}
