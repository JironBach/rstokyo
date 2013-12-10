class CreateMasterCommutingTimes < ActiveRecord::Migration
  def change
    create_table :master_commuting_times do |t|

      t.timestamps
    end
  end
end
