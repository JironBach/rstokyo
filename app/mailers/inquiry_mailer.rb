class InquiryMailer < ActionMailer::Base
  default from: ENV['MAIL_USER_NAME']

  def confirm_owner(owner)
    @owner = owner
    mail(to: @owner.email, subject: 'お問い合わせありがとうございます。') do |format|
      format.text { render 'confirm_owner' }
    end
  end

  def owner(owner)
    @owner = owner
    mail(to: ENV['MAIL_TO'], subject: 'オーナー様･不動産会社様お問い合わせ') do |format|
      format.text { render 'owner' }
    end
  end

  def confirm_mailmagazine(mailmagazine)
    @mailmagazine = mailmagazine
    mail(to: @mailmagazine.email, subject: 'メールマガジンご登録ありがとうございます') do |format|
      format.text { render 'confirm_mailmagazine' }
    end
  end

  def mailmagazine(mailmagazine)
    @mailmagazine = mailmagazine
    mail(to: ENV['MAIL_TO'], subject: 'メールマガジン登録') do |format|
      format.text { render 'mailmagazine' }
    end
  end
  
  def confirm_contact(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'お問い合わせありがとうございます') do |format|
      format.text { render 'confirm_contact' }
    end
  end

  def contact(contact)
    @contact = contact
    mail(to: ENV['MAIL_TO'], subject: 'お問い合わせ') do |format|
      format.text { render 'contact' }
    end
  end

  def confirm_review(review)
    @review = review
    attachments[@review.image.instance.image_file_name] = File.read(@review.image.path) if !@review.image.blank?
    mail(to: @review.email, subject: '口コミ情報のご提供ありがとうございます') do |format|
      format.text { render 'confirm_review' }
    end
  end

  def review(review)
    @review = review
    attachments[@review.image.instance.image_file_name] = File.read(@review.image.path) if !@review.image.blank?
		mail(to: ENV['MAIL_TO'], subject: '口コミ情報') do |format|
			format.text { render 'review' }
		end
  end

  def confirm_vacanthouse(vacanthouse, madori_ids)
    @vacanthouse = vacanthouse
    @madori_ids = madori_ids
    attachments[@vacanthouse.image.instance.image_file_name] = File.read(@vacanthouse.image.path) if !@vacanthouse.image.blank?
    mail(to: @vacanthouse.email, subject: '「空き室を貸したい情報」のご提供ありがとうございます。') do |format|
      format.text { render 'confirm_vacanthouse' }
    end
  end

  def vacanthouse(vacanthouse, madori_ids)
    @vacanthouse = vacanthouse
    @madori_ids = madori_ids
    attachments[@vacanthouse.image.instance.image_file_name] = File.read(@vacanthouse.image.path) if !@vacanthouse.image.blank?
    mail(to: ENV['MAIL_TO'], subject: "空き室を貸したい：#{@vacanthouse.title} by #{@vacanthouse.name}" ) do |format|
      format.text { render 'vacanthouse' }
    end
  end

end
