class AddCheckedAtToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :checked_at, :datetime
  end
end
