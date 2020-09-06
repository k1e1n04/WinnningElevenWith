class AddLowPassAToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :low_pass, :integer
  end
end
