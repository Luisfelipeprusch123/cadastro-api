class CreateLoginUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :login_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
