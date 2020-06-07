class Vote < ApplicationRecord
  belongs_to :article
  belogs_to :user
end
