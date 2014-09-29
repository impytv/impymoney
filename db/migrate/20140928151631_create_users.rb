class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :uid
      t.string :refresh_token
      t.string :access_token
      t.string :expires

      t.timestamps
    end
  end
end
