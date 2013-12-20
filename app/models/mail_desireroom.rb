class MailDesireroom < ActiveRecord::Base
	has_many :mail_desireroom_master_madoris
	has_many :master_madoris, :through => :mail_desireroom_master_madoris
	accepts_nested_attributes_for :master_madoris
end
