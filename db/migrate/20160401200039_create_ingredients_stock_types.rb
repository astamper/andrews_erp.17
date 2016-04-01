class CreateIngredientsStockTypes < ActiveRecord::Migration
  def change
    create_table :ingredients_stock_types do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :stock_type, index: true
    end
  end
end
