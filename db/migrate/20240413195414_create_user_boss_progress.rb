# db/migrate/YYYYMMDDHHMMSS_create_user_boss_progress.rb
class CreateUserBossProgress < ActiveRecord::Migration[6.0]
  def change
    create_table :user_boss_progress do |t|
      t.references :user, foreign_key: true
      t.references :bosstiaries, foreign_key: true
      t.integer :kills_achieved, default: 0
      t.timestamps
    end
  end
end
