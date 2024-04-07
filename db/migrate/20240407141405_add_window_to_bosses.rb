class AddWindowToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :window, :string
  end
end
