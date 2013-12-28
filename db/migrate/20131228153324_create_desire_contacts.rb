class CreateDesireContacts < ActiveRecord::Migration
  def change
    create_table(:desire_contacts, :options => "", :force => (false)) do |t|
      t.timestamps
      t.integer(:mail_desire_room_id, :limit => 11, :default => "", :null => (false))
      t.integer(:master_contact_id, :limit => 11, :default => "", :null => (false))
    end
  end
end