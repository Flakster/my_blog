class Category < ApplicationRecord
  has_many :tags
  has_many :articles, through: :tags

  validates :name, uniqueness: true, presence: true

  def self.priority_ordered
    Category.order(priority: :desc).limit(4).includes(:articles)
  end
end
