class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :published_year
      t.float :reservation_price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
