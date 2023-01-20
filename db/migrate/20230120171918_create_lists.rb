class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :item
      t.string :description
      t.string :priority

      t.timestamps
    end
  end
end
