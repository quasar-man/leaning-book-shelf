class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :leaning_users
      t.references :publisher
      t.string :title
      t.string :api_url
      t.string :thumbnail_url
      t.string :image_url
      t.date :published_date
      t.integer :price

      t.timestamps
    end
  end
end
