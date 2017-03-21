class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :user_id
      t.timestamps
    end

    add_index :lists, :title
    add_index :lists, :status
    add_index :lists, :user_id
    add_index :lists, :created_at
    add_index :lists, :updated_at
  end
end
