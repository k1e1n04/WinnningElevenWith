class AddHeadingToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :heading, :integer
  end
end
