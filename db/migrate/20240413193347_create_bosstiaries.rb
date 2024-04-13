# db/migrate/YYYYMMDDHHMMSS_create_bosstiary.rb
class CreateBosstiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :bosstiaries do |t|
      t.string :name
      t.string :boss_class
      t.integer :kills_needed, default: 0
      t.integer :bane_points, default: 50
      t.integer :archfoe_points, default: 100
      t.integer :nemesis_points, default: 100
      t.timestamps
    end

    # Set default values for kills_needed based on boss_class
    change_column_default :bosstiaries, :kills_needed, from: nil, to: 300
    change_column_default :bosstiaries, :kills_needed, from: nil, to: 60
    change_column_default :bosstiaries, :kills_needed, from: nil, to: 5
  end
end
