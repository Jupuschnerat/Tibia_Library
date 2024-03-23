class CreateEventBosses < ActiveRecord::Migration[7.1]
  def change
    create_table :event_bosses do |t|
      t.string :name
      t.string :janela
      t.string :local
      t.text :description

      t.timestamps
    end
  end
end
