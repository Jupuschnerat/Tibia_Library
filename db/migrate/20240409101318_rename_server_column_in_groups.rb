class RenameServerColumnInGroups < ActiveRecord::Migration[6.0]
  def change
    rename_column :groups, :server, :server_id
  end
end
