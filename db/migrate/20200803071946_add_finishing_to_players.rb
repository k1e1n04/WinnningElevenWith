class AddFinishingToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :finishing, :integer
  end
end
