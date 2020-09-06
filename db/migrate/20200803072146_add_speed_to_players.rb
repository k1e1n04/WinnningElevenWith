class AddSpeedToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :speed, :integer
  end
end
