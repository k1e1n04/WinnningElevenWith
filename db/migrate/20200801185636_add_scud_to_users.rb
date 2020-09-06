class AddScudToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :scud, :string
  end
end
