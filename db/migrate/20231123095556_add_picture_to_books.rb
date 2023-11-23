class AddPictureToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :picture_url, :string
  end
end
