class CreateBookReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :book_reviews do |t|
      t.references :leaning_user
      t.references :book
      t.text :comment
      t.float :score
      t.boolean :is_available

      t.timestamps
    end
  end
end
