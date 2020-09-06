class AddSetPieceTakingToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :set_piece_taking, :integer
  end
end
