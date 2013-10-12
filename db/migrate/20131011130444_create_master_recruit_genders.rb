class CreateMasterRecruitGenders < ActiveRecord::Migration
  def change
    create_table :master_recruit_genders do |t|
      t.timestamps
      t.string(:value, :limit => 16, :null => (false))
    end
  end
end
