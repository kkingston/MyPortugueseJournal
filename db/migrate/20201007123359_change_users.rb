class ChangeUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :username
      t.rename :password_digest, :email
    end
  end
end
