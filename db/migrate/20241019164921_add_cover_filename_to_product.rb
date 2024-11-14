class AddCoverFilenameToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :cover_filename, :string
  end
end
