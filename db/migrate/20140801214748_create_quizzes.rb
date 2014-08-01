class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :card_collection, index: true
      t.integer :score

      t.timestamps
    end
  end
end
