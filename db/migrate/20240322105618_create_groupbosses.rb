class CreateGroupbosses < ActiveRecord::Migration[7.1]
  def change
    create_table :groupbosses do |t|

      t.timestamps
    end
  end
end
