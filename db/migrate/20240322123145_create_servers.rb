class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.bigint :group_id
      t.timestamps
    end

    add_index :servers, :group_id
    add_foreign_key :servers, :groups
  end
end
