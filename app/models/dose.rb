class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, length: { minimum: 1 }
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
end
