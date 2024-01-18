filtered_data <- remove_rows_by_value(raw_data, "Situation_actuelle", "En recherche emploi")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "En poursuite d'études (hors thèse) / en formation")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "These")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "Sans activité")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "Volontariat")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "En création d'entreprise /reprise d'entreprise")
filtered_data <- remove_rows_by_value(filtered_data, "Situation_actuelle", "Etudes")

activite_data <- filtered_data
