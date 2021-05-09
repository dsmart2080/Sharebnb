class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.string :product, null:false
      t.string :location, null:false
      t.integer :length, null:false
      t.integer :start_date, null:false
      t.integer :end_date, null:false
      t.integer :creator_id, null:false
      t.timestamps
    end
  end
end
