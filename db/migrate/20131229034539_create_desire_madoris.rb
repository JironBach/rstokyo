class CreateDesireMadoris < ActiveRecord::Migration
  def change
    create_table(:desire_madoris, :options => "", :force => (false)) do |t|
      t.timestamps
      t.integer(:mail_desireroom_id, :limit => 4, :null => (false))
      t.integer(:master_madori_id, :limit => 4, :null => (false))
    end
  end
end
