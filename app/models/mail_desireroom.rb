class MailDesireroom < ActiveRecord::Base
	has_many :mail_desireroom_master_contact_informations
	has_many :master_contact_informations, :through => :mail_vdesireroom_master_contact_informations
    accepts_nested_attributes_for :master_contact_informations
end
