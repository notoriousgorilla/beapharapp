class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :item_number
      t.decimal :item_value, :precision => 4, :scale => 2 #This allows the db to have 2 digits after the decimal point and a 4 digits total
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
