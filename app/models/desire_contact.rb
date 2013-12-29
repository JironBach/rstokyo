class DesireContact < ActiveRecord::Base
	belongs_to :mail_desireroom
	belongs_to :master_contact_information
end
