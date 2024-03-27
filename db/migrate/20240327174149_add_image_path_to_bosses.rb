class AddImagePathToBosses < ActiveRecord::Migration[7.1]
  def change
    add_column :bosses, :image_path, :string
  end
end
