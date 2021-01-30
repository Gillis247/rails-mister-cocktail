class Ingredient < ApplicationRecord
  has_many :doses
  #has_many :cocktails, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
  #has_many :doses, dependent: :destroy
end
