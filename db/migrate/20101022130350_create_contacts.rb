class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email_address
      t.string :phone_number
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
