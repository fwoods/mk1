class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :subtitle
      t.string :status
      t.decimal :price, :precision => 8, :scale =>2
      t.string :buy_link
      t.string :images
      t.integer :like_num
      t.integer :own_num
      t.string :author
      t.text :description

      t.timestamps
    end
  end
  def self.down
  	drop_table :products
  end
end
