class ChangeBackOfCardFromStringToText < ActiveRecord::Migration
  def change
    change_table :cards do |t|
      t.change :back, :text
    end
  end
end
