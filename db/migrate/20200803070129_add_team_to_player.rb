class AddTeamToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team, :string
  end
end
