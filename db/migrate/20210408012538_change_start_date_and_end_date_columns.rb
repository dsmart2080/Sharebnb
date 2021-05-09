class ChangeStartDateAndEndDateColumns < ActiveRecord::Migration[5.2]
  def change

    # change column name from 'start_date' to 'available_from'
    remove_column :listings, :start_date
    add_column :listings, :available_from, :date

    # change column name from 'end_date' to 'available_until'
    remove_column :listings, :end_date
    add_column :listings, :available_until, :date

  end
end
