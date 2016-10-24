class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :startsAt
      t.date :endsAt
      t.integer :client_id
      t.integer :plumber_id

      t.timestamps
    end
  end
end
