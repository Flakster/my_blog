class Tag < ApplicationRecord
  belongs_to :category
  belongs to :article
end
