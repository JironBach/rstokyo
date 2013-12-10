class CreateMasterDesiredNumbers < ActiveRecord::Migration
  def change
    create_table :master_desired_numbers do |t|

      t.timestamps
    end
  end
end
