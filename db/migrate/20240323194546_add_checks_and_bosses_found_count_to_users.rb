class AddChecksAndBossesFoundCountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :checks_count, :integer, default: 0
    add_column :users, :bosses_found_count, :integer, default: 0
  end
end
