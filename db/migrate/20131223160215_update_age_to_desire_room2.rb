class UpdateAgeToDesireRoom2 < ActiveRecord::Migration
  def change
    change_column(:mail_desirerooms, :age, :integer, :limit => 4, :null => true)
    change_column(:mail_desirerooms, :furigana, :string, :null => true)
    change_column(:mail_desirerooms, :tel, :string, :null => true)
    change_column(:mail_desirerooms, :station, :string, :null => true)
    change_column(:mail_desirerooms, :master_commuting_time_id, :integer, :limit => 4, :null => true)
    change_column(:mail_desirerooms, :line, :string, :null => true)
    change_column(:mail_desirerooms, :area, :string, :null => true)
    change_column(:mail_desirerooms, :master_live_term_id, :integer, :limit => 4, :null => true)
    change_column(:mail_desirerooms, :master_desired_number_id, :integer, :limit => 4, :null => true)
    change_column(:mail_desirerooms, :conditions01, :string, :null => true)
    change_column(:mail_desirerooms, :conditions02, :string, :null => true)
    change_column(:mail_desirerooms, :conditions03, :string, :null => true)
    change_column(:mail_desirerooms, :conditions04, :string, :null => true)
    change_column(:mail_desirerooms, :conditions05, :string, :null => true)
    change_column(:mail_desirerooms, :detail, :text, :null => true)
  end
end
