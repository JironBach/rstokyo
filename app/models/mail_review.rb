class MailReview < ActiveRecord::Base
	belongs_to :age
	belongs_to :job
	belongs_to :theme

  validates :title, presence: { message: '※件名を入力してください' }
  validates :name, presence: { message: '※お名前を入力してください' }
  validates :age_id, presence: true
  validates :job_id, presence: true
  validates :email, presence: { message: '※メールアドレスを入力してください' }
  validates :theme_id, presence: { message: '※テーマ種別を選択してください' }
  validates :detail, presence: { message: '※コメント記入欄を入力してください' }

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

end
