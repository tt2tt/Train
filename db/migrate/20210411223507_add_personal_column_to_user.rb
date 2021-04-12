class AddPersonalColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :integer, limit: 8
    add_column :users, :address, :string
    add_column :users, :emergency_contact, :integer, limit: 8
    add_column :users, :relationship, :string
    add_column :users, :mynumber, :integer, limit: 8
    add_column :users, :account, :string
    add_column :users, :pension_number, :integer, limit: 8
  end
end
