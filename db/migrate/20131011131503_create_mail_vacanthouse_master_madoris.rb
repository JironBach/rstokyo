class CreateMailVacanthouseMasterMadoris < ActiveRecord::Migration
  def change
    create_table(:mail_vacanthouse_master_madoris) do |t|
      t.timestamps
      t.integer(:mail_vacanthouse_id, :limit => 11, :null => (false))
      t.integer(:master_madori_id, :limit => 11, :null => (false))
    end
  end
end