# ici nous ajoutons nos restaurants fictifs
# On commence par cliner notre base de données
Restaurant.destroy_all if Rails.env.development?
# Ensuite on crée nos instances
Restaurant.create!(name: "Dishoom", address: "8 Boundary St, London E2 7JE", category: "italian")
Restaurant.create!(name: "Mario", address: "9 Boundary St, Paris E2 7JE", category: "italian")
Restaurant.create!(name: "Luigi", address: "11 Boundary St, Toulouse E2 7JE", category: "italian")
Restaurant.create!(name: "Toad", address: "12 Boundary St, Alger E2 7JE", category: "italian")
Restaurant.create!(name: "Wario", address: "23 Boundary St, Rome E2 7JE", category: "italian")
