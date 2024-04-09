class CreateGroupBosses < ActiveRecord::Migration[7.1]
  def change
    create_table :group_bosses do |t|
      t.references :group, foreign_key: true
      t.references :boss, foreign_key: true
      t.timestamps
    end
  end
end
