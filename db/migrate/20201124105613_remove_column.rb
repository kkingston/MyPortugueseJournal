class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :word_id, :integer
  end
end
