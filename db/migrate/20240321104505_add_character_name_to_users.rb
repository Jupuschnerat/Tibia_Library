class AddCharacterNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :character_name, :string
  end
end
