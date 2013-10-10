class AddAttachmentImageToMailReviews < ActiveRecord::Migration
  def self.up
    change_table :mail_reviews do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :mail_reviews, :image
  end
end
