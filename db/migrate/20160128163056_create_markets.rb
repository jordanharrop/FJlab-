class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.integer :rank
      t.string :flag_url

      t.timestamps null: false
    end
  end
end
