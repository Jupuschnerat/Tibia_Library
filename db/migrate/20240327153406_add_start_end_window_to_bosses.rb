class AddStartEndWindowToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :start_window, :datetime
    add_column :bosses, :end_window, :datetime
  end
end
