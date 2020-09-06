class AddCountryToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :country, :string
  end
end
