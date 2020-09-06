class AddKickingPowerToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :kicking_power, :integer
  end
end
