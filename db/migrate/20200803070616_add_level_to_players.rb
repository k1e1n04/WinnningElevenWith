class AddLevelToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :level, :integer
  end
end
