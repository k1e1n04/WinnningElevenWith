class AddPlofileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :plofile, :text
  end
end
