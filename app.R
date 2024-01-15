library(shiny)

# Charger l'interface utilisateur et le serveur depuis les fichiers externes
source("ui.R")
source("server.R")

# Lancer l'application Shiny
shinyApp(ui = ui, server = server)
