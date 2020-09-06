class AddBllControlToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :ball_control, :integer
  end
end
