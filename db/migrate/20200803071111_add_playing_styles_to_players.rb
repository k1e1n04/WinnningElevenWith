class AddPlayingStylesToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :Playing_styles, :string
  end
end
