class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :markets, index: true
      t.belongs_to :products, index: true
      
      t.timestamps null: false
    end
  end
end
