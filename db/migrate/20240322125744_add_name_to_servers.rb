class AddNameToServers < ActiveRecord::Migration[7.1]
  def change
    add_column :servers, :name, :string
  end
end
