class AddSkillsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :Skills, :string
  end
end
