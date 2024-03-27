class CreateServerGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :server_groups do |t|

      t.timestamps
    end
  end
end
