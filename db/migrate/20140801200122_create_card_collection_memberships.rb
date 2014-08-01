class CreateCardCollectionMemberships < ActiveRecord::Migration
  def change
    create_table :card_collection_memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :card_collection, index: true

      t.timestamps
    end
  end
end
