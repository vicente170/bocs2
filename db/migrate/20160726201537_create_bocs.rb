class CreateBocs < ActiveRecord::Migration
  def change
    create_table :bocs do |t|
      t.text :content
      t.string :company
      t.integer :price
      t.date :enddate
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :bocs, [:user_id, :created_at]
  end
end
