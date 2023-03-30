class CreateCategorizes < ActiveRecord::Migration[7.0]
  def change
    create_table :categorizes do |t|
      t.references :book
      t.references :category

      t.timestamps
    end
  end
end
