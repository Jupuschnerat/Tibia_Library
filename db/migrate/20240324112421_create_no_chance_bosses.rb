class CreateNoChanceBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :no_chance_bosses do |t|
      t.references :boss, null: false, foreign_key: true

      t.timestamps
    end
  end
end
