class CreateFixRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :fix_requests do |t|
      t.integer :target, null: false
      t.text :content, null: false

      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
