class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :tags, inverse_of: :article
  has_many :categories, through: :tags
  has_many :votes

  validates :title, :body, :image, :author_id, presence: true
  
  accepts_nested_attributes_for :tags

  scope :recent, -> {order(created_at: :desc).limit(1)}
  
end
