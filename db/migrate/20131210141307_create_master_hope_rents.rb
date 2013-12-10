class CreateMasterHopeRents < ActiveRecord::Migration
  def change
    create_table :master_hope_rents do |t|

      t.timestamps
    end
  end
end
