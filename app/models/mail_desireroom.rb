class MailDesireroom < ActiveRecord::Base
	has_many :desire_madoris
	has_many :master_madoris, through: :desire_madoris
	accepts_nested_attributes_for :master_madoris
	has_many :desire_contacts
	has_many :master_contact_informations, through: :desire_contacts
	belongs_to :master_commuting_time
	belongs_to :master_hope_rent
	belongs_to :master_live_term
	belongs_to :master_desired_number

  validates :master_gender_id, presence: { message: '※性別を選択してください' }
end
