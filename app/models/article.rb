class Article < ApplicationRecord
  belongs_to :user
  has_many :tags, inverse_of: :article
  has_many :categories, through: :tags
  has_many :votes

  validates :title, :body, :image, :user_id, presence: true
  
  accepts_nested_attributes_for :tags
  
end
