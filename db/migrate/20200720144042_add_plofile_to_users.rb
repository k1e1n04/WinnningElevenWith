class AddPlofileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rate, :integer
  end
end
