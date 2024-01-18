filtered_data <- remove_rows_by_value(raw_data, "Situation", "En recherche emploi")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "En poursuite d'études (hors thèse) / en formation")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "These")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "Sans activité")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "Volontariat")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "En création d'entreprise /reprise d'entreprise")
filtered_data <- remove_rows_by_value(filtered_data, "Situation", "Etudes")

activite_data <- filtered_data