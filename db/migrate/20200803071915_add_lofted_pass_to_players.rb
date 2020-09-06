class AddLoftedPassToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :lofted_pass, :integer
  end
end
