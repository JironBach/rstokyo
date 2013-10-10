class InquiryMailer < ActionMailer::Base
  default from: ENV['MAIL_USER_NAME']

  def review(review)
    @review = review
    attachments[@review.image.instance.image_file_name] = File.read(@review.image.path) if !@review.image.blank?
		mail(to: ENV['MAIL_TO'], subject: '口コミ情報') do |format|
			format.text { render 'review' }
		end
  end

end
