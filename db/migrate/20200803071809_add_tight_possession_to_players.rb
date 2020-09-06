class AddTightPossessionToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :tight_possession, :integer
  end
end
