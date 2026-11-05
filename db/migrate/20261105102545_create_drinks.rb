class CreateDrinks < ActiveRecord::Migration[8.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :barcode
      t.decimal :price
      t.integer :volume

      t.timestamps
    end
  end
end
