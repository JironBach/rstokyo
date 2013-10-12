class MailVacanthouseMasterMadori < ActiveRecord::Base
	has_many :master_madoris, :through => :mail_vacanthouse_master_madoris
end
