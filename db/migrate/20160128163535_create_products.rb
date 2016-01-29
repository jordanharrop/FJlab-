class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :style_number
      t.string :fd_number
      t.string :confirmation_number
      t.references :category, index: true, foreign_key: true
      t.references :mobility, index: true, foreign_key: true
      t.integer :mobility_rank
      t.string :gender
      t.string :warranty
      t.string :warranty_url
      t.string :image_url
      t.string :description
      t.text :comments

      t.timestamps null: false
    end
  end
end
