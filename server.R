library(shiny)
library(rmarkdown)
library(htmltools)

# Définir le chemin du répertoire contenant vos fichiers
chemin_repertoire <- "./ScriptSites"

shinyServer(function(input, output) {
  output$contenu_fichier <- renderUI({
    # Construire le chemin complet du fichier sélectionné
    chemin_fichier <- file.path(chemin_repertoire, input$annee, input$fichier)

    # Imprimer le chemin du fichier dans la console
    cat("Chemin du fichier:", chemin_fichier, "\n")

    # Vérifier si le fichier existe
    if (file.exists(chemin_fichier)) {
      # Lire le contenu HTML directement
      contenu_html <- readLines(chemin_fichier, warn = FALSE)

      # Afficher le contenu HTML
      HTML(contenu_html)

    } else {
      # Si le fichier n'existe pas, afficher un message d'erreur
      tags$div("Le fichier n'existe pas.")
    }
  })
})
