class MailContact < ActiveRecord::Base
  validates :corp_name, presence: true
  validates :name, presence: { message: '※お名前を入力してください' }
  validates :email, presence: { message: '※メールアドレスを入力してください' }
  validates :detail, presence: { message: '※コメント記入欄を入力してください' }
end
