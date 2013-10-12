class CreateMasterMadoris < ActiveRecord::Migration
  def change
    create_table :master_madoris do |t|
      t.timestamps
      t.string(:value, :limit => 16, :null => (false))
    end
  end
end
