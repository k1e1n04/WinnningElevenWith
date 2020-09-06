class AddCostToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :cost, :integer
  end
end
