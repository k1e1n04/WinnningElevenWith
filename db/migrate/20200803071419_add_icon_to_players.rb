class AddIconToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :icon, :string
  end
end
