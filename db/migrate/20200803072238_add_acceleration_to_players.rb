class AddAccelerationToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :acceleration, :integer
  end
end
