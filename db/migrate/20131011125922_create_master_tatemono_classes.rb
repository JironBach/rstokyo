class CreateMasterTatemonoClasses < ActiveRecord::Migration
  def change
    create_table :master_tatemono_classes do |t|
      t.timestamps
      t.string(:value, :limit => 16, :null => (false))
    end
  end
end
