class CreateMasterAgeGenders < ActiveRecord::Migration
  def change
    create_table(:master_age_genders) do |t|
      t.timestamps
      t.string(:value, :limit => 16, :null => (false))
    end
  end
end
