class CreateLeaningUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :leaning_users do |t|
      t.string :session_info

      t.timestamps
    end
  end
end
