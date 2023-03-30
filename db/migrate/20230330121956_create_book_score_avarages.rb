class CreateBookScoreAvarages < ActiveRecord::Migration[7.0]
  def change
    create_table :book_score_avarages do |t|
      t.references :book
      t.decimal :avarage_score, precision: 3, scale: 2
      t.float :total_score
      t.integer :score_count

      t.timestamps
    end
  end
end
