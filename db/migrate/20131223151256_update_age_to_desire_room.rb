class UpdateAgeToDesireRoom < ActiveRecord::Migration
  def change
    change_column(:mail_desirerooms, :age, :integer, :limit => 11)
  end
end