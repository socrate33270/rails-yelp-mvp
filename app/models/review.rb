class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  # numericality sert à vérifier qu'un attribut contient uniquement une valeur numérique
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }
end
