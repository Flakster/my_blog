class Article < ApplicationRecord
  belongs_to :user
  has_many :tags, inverse_of: :articles
  has_many :catgories, through: :tags
  has_many :votes
end
