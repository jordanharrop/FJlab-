class CreateMobilities < ActiveRecord::Migration
  def change
    create_table :mobilities do |t|
      t.string :name
      t.integer :rank

      t.timestamps null: false
    end
  end
end
