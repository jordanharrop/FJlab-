class ChangeCLocation < ActiveRecord::Migration
  def change
    rename_column :locations, :markets_id, :market_id
    rename_column :locations, :products_id, :product_id
  end
end
