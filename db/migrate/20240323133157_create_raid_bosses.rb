class CreateRaidBosses < ActiveRecord::Migration[7.1]
  def change
    create_table :raid_bosses do |t|
      t.string :name
      t.string :message
      t.integer :janela
      t.string :local
      t.text :description

      t.timestamps
    end
  end
end
