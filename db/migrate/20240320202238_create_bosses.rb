class CreateBosses < ActiveRecord::Migration[7.1]
  def change
    create_table :bosses do |t|
      t.integer :janela
      t.string :local
      t.string :name
      t.boolean :checked, default: false
      t.boolean :found, default: false
      # t.references :guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
