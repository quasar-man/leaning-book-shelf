class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.references :book
      t.references :tag

      t.timestamps
    end
  end
end
