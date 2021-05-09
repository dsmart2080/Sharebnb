class AddNullFalseToAvailableFromAndAvailableUntilColumns < ActiveRecord::Migration[5.2]
  def change
    change_column_null :listings, :available_from, false

    change_column_null :listings, :available_until, false
  end
end
