class UpdateAgeToDesireRoom3 < ActiveRecord::Migration
  def change
    change_column(:mail_desirerooms, :master_gender_id, :integer, :limit => 4, :null => true)
  end
end
