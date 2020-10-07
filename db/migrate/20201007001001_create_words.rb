class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :word
      t.text :definition
      t.string :pos

      t.timestamps
    end
  end
end
