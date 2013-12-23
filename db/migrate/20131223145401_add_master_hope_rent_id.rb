class AddMasterHopeRentId < ActiveRecord::Migration
  def change
    add_column(:mail_desirerooms, :master_hope_rent_id, :integer, :limit => 11)
  end
end