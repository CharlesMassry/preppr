class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :card_collection, index: true
      t.string :front
      t.string :back

      t.timestamps
    end
  end
end
