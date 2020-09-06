class AddStrongerFootToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :stronger_foot, :string
  end
end
