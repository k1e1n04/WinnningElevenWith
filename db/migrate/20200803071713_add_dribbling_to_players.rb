class AddDribblingToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :dribbling, :integer
  end
end
