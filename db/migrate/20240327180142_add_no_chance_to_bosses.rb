class AddNoChanceToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :no_chance, :boolean, default: false
  end
end
