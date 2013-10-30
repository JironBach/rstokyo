class CreateMailContacts < ActiveRecord::Migration
  def change
    create_table(:mail_contacts) do |t|
      t.timestamps
      t.string(:corp_name, :limit => 50, :null => (false))
      t.string(:name, :limit => 50, :null => (false))
      t.string(:email, :limit => 100, :null => (false))
      t.text(:detail, :null => (false))
    end
  end
end