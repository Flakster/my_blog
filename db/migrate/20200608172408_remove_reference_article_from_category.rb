class RemoveReferenceArticleFromCategory < ActiveRecord::Migration[6.0]
  def change
    remove_reference :categories, :article, index: true, foreign_key: true
  end
end
