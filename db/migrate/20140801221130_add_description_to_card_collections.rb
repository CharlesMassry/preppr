class AddDescriptionToCardCollections < ActiveRecord::Migration
  def change
    add_column :card_collections, :description, :text
  end
end
