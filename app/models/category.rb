class Category < ApplicationRecord
  has_many :tags
  hay_many :articles through: :tags

  validates :name, uniqueness: true, presence: true
end
