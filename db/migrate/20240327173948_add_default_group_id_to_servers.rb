class AddDefaultGroupIdToServers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :servers, :group_id, 0
  end
end
