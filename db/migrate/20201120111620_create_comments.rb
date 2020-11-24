class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.date :date
      t.integer :word_id
      t.integer :user_id
      t.integer :entry_id

      t.timestamps
    end
  end
end
