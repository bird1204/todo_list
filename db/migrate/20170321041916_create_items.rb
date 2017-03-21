class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :list_id
      t.timestamps
    end
    add_index :items, :title
    add_index :items, :status
    add_index :items, :list_id
    add_index :items, :created_at
    add_index :items, :updated_at
  end
end
