class AddCompanyAndLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company, :string, null:false
    add_column :users, :location, :string, null:false

    add_index :users, :company
  end
end
