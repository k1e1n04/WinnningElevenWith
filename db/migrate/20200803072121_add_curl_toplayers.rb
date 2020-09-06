class AddCurlToplayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :curl, :integer
  end
end
