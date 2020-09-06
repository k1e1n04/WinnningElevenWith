class AddRateToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rate, :string
  end
end
