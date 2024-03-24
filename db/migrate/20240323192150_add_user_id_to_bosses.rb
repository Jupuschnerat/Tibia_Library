class AddUserIdToBosses < ActiveRecord::Migration[6.0]
  def change
    add_reference :bosses, :checked_by, foreign_key: { to_table: :users }
    add_reference :bosses, :found_by, foreign_key: { to_table: :users }
  end
end
