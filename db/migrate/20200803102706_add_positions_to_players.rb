class AddPositionsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :positions, :string
  end
end
