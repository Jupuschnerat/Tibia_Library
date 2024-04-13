class AddFoundAtToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :found_at, :datetime
  end
end
