class ModifyServersForeignKey < ActiveRecord::Migration[6.0]
  def change
    # Remove the existing foreign key constraint
    remove_foreign_key :servers, :groups

    # Modify the servers table to reference the id column in the groups table
    change_table :servers do |t|
      t.remove :group_id
      t.references :group, foreign_key: true, null: false
    end
  end
end
