class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :role
      t.integer :rate
      t.string :company_name
      t.string :borough
      t.string :image
      t.text :bio

      t.timestamps
    end
  end
end
