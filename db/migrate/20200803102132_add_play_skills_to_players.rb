class AddPlaySkillsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :play_skills, :text
  end
end
