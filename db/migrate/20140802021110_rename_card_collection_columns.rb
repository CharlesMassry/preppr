class RenameCardCollectionColumns < ActiveRecord::Migration
  def change
    rename_column :deck_memberships, :card_collection_id, :deck_id
    rename_column :cards, :card_collection_id, :deck_id
    rename_column :quizzes, :card_collection_id, :deck_id
  end
end
