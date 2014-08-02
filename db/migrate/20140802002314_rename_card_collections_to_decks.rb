class RenameCardCollectionsToDecks < ActiveRecord::Migration
  def change
    rename_table :card_collections, :decks
  end
end
