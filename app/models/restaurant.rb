class Restaurant < ApplicationRecord
  # On définit nos catégories dans une constante d'ou l'utilsation des majuscules
  # On ajoute .freeze à la fin pour s'assurer que personne ne modifiera les catégories au besoin
  has_many :reviews, dependent: :destroy
  CATEGORIES = [ "chinese", "italian", "japanese", "french", "belgian" ]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
end
