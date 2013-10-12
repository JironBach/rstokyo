class MailVacanthouse < ActiveRecord::Base
	has_many :mail_vacanthouse_master_madoris
	has_many :master_madoris, :through => :mail_vacanthouse_master_madoris
  accepts_nested_attributes_for :master_madoris

  validates :name, presence: { message: '※名前・ニックネームを入力してください' }
  validates :master_age_id, presence: true
  validates :master_gender_id, presence: true
  validates :master_job_id, presence: true
  validates :email, presence: { message: '※メールアドレスを入力してください' }
  validates :title, presence: { message: '※件名を入力してください' }
  validates :address, presence: { message: '※住所を入力してください' }
  validates :price, presence: { message: '※家賃を入力してください' }
  validates :station, presence: { message: '※最寄り駅を入力してください' }
  validates :station_time, presence: { message: '※最寄り駅からの所要時間を入力してください' }
  validates :master_tatemono_class_id, presence: { message: '※建物種別を選択してください' }
  #validates :master_madoris, presence: true
  validates :master_live_term_id, presence: { message: '※入居期間を選択してください' }
  validates :master_recruit_gender_id, presence: true
  validates :detail, presence: { message: '※説明・コメントを入力してください' }

	has_attached_file :image, {
    :styles => {
      :thumb => ["50x50#"],
      :medium => ["100x100#"],
      :large => ["300x300>"],
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :thumb => "-gravity Center -crop 100x100+0+0",
    },
  }

  def save_with_madori(madori_ids)
    save

    MailVacanthouseMasterMadori.where(mail_vacanthouse_id: self.id).all.each do |mm|
      mm.delete
    end

    madori_ids.each do |mi|
      new_mm = MailVacanthouseMasterMadori.new({mail_vacanthouse_id: self.id, master_madori_id: mi})
      new_mm.save
    end

  end

end
