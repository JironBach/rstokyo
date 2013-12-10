class CreateMasterContactInformations < ActiveRecord::Migration
  def change
    create_table :master_contact_informations do |t|

      t.timestamps
    end
  end
end
