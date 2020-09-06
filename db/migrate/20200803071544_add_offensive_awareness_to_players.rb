class AddOffensiveAwarenessToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :offensive_awareness, :integer
  end
end
