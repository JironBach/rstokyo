class CreateMailContacts < ActiveRecord::Migration
  def change
    create_table :mail_contacts do |t|

      t.timestamps
    end
  end
end
