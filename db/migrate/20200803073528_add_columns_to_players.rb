class AddColumnsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :jumping, :integer
    add_column :players, :physical_contact, :integer
    add_column :players, :balance, :integer
    add_column :players, :stamina, :integer
    add_column :players, :defensive_awareness, :integer
    add_column :players, :ball_winning, :integer
    add_column :players, :aggression, :integer
    add_column :players, :gk_awareness, :integer
    add_column :players, :gk_cathing, :integer
    add_column :players, :gk_clearing, :integer
    add_column :players, :gk_reflexes, :integer
    add_column :players, :gk_reach, :integer
    add_column :players, :weak_foot_usage, :integer
    add_column :players, :weak_foot_accuracy, :integer
    add_column :players, :conditioning, :integer
    add_column :players, :injury_resistance, :integer
  end
end
