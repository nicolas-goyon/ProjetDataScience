# server.R
library(shiny)
library(rmarkdown)

shinyServer(function(input, output) {

  # Fonction pour rendre le contenu du Rmd en fonction de l'année
  render_rmd_for_year <- function(year) {
    fichier_rmd <- paste0(year, ".Rmd")
    fichier_html_temp <- tempfile(fileext = ".html")
    render_result <- render(fichier_rmd, output_file = fichier_html_temp)
    return(fichier_html_temp)
  }


  # Observer pour réagir aux changements dans les années sélectionnées
  observe({
    # Vérifier si des années ont été sélectionnées
    if (!is.null(input$annee) && length(input$annee) > 0) {

      # Sélectionner la première année (vous pouvez ajuster la logique selon vos besoins)
      selected_year <- input$annee
      selected_diagram <- input$fichier

      # Rendre le contenu du Rmd en fonction de l'année
      fichier_html_temp <- render_rmd_for_year(paste0("ScriptSites/", selected_year, "/", selected_diagram))

      # Affichage du contenu HTML dans l'UI Shiny
      output$data <- renderUI({
        includeHTML(fichier_html_temp)
      })
    }
  })

})
