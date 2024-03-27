class RemoveNotNullConstraintFromServers < ActiveRecord::Migration[7.1]
  def change
    change_column_null :servers, :group_id, true
  end
end
