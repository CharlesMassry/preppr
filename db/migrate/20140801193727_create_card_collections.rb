class CreateCardCollections < ActiveRecord::Migration
  def change
    create_table :card_collections do |t|
      t.belongs_to :admin, index: true
      t.string :name

      t.timestamps
    end
  end
end
