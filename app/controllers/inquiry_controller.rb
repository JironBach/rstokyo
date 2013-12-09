class InquiryController < ApplicationController

	def desireroom
		@title = 'こんな物件を探してほしい'
		@desireroom = MailDesireroom.new
		render :desireroom
	end

	def confirm_desireroom
		@title = 'ルームシェア東京：こんな物件を探してほしい'
		@desireroom = MailDesireroom.new
		@desireroom.update(desireroom_strong_params)
		if @desireroom.valid?
			render :confirm_desireroom
		else
			render :desireroom
		end
	end

	def post_desireroom
		@title = 'ルームシェア東京：こんな物件を探してほしい'
		@desireroom = MailDsireroom.new
		@desireroom.update(desireroom_strong_params)
		@desireroom.save

		InquiryMailer.confirm_desireroom(@desireroom).deliver
		InquiryMailer.desireroom(@desireroom).deliver

		render :post_desireroom
	end
	
	def owner
		@title = 'ルームシェア東京：オーナー様･不動産会社様へ'
		@owner = MailOwner.new
		render :owner
	end

	def confirm_owner
		@title = 'ルームシェア東京：オーナー様･不動産会社様へ'
		@owner = MailOwner.new
		@owner.update(owner_strong_params)
		if @owner.valid?
			render :confirm_owner
		else
			render :owner
		end
	end

	def post_owner
		@title = 'ルームシェア東京：オーナー様･不動産会社様へ'
		@owner = MailOwner.new
		@owner.update(owner_strong_params)
		@owner.save

		InquiryMailer.confirm_owner(@owner).deliver
		InquiryMailer.owner(@owner).deliver

		render :post_owner
	end
		
	def mailmagazine
		@title = 'ルームシェア東京：メールマガジン'
		@mailmagazine = MailMailmagazine.new
		render :mailmagazine
	end

	def confirm_mailmagazine
		@title = 'ルームシェア東京：メールマガジン'
		@mailmagazine = MailMailmagazine.new
		@mailmagazine.update(mailmagazine_strong_params)
		if @mailmagazine.valid?
			render :confirm_mailmagazine
		else
			render :mailmagazine
		end
	end

	def post_mailmagazine
		@title = 'ルームシェア東京：メールマガジン'
		@mailmagazine = MailMailmagazine.new
		@mailmagazine.update(mailmagazine_strong_params)
		@mailmagazine.save

		InquiryMailer.confirm_mailmagazine(@mailmagazine).deliver
		InquiryMailer.mailmagazine(@mailmagazine).deliver

		render :post_mailmagazine
	end

	def review
		@title = 'ルームシェア東京：口コミ情報求む！'
		@review = MailReview.new
		render :review
	end

	def confirm_review
		@title = 'ルームシェア東京：口コミ情報求む！'
		@review = MailReview.new
		@review.update(review_strong_params)
		session[:image] = @review.image
		if @review.valid?
			render :confirm_review
		else
			render :review
		end
	end

	def post_review
		@title = 'ルームシェア東京：口コミ情報求む！'
		@review = MailReview.new
		@review.update(review_strong_params)
		@review.image = session[:image]
		session[:image] = nil
		@review.save

		InquiryMailer.confirm_review(@review).deliver
		InquiryMailer.review(@review).deliver

		render :post_review
	end

	def contact
		@title = 'ルームシェア東京：お問い合わせ'
		@contact = MailContact.new
		render :contact
	end

	def confirm_contat
		@title = 'ルームシェア東京：お問い合わせ'
		@contact = MailContact.new
		@contact.update(contact_strong_params)
		if @contact.valid?
			render :confirm_contact
		else
			render :contact
		end
	end

	def post_contact
		@title = 'ルームシェア東京：お問い合わせ'
		@contact = MailContact.new
		@contact.update(contact_strong_params)
		@contact.save

		InquiryMailer.confirm_contact(@contact).deliver
		InquiryMailer.contact(@contact).deliver

		render :post_contact
	end

	def vacanthouse
		@title = 'ルームシェア東京：空き室を貸したい！'
		@vacanthouse = MailVacanthouse.new
		render :vacanthouse
	end

	def confirm_vacanthouse
		@title = 'ルームシェア東京：空き室を貸したい！'
		@vacanthouse = MailVacanthouse.new
		@vacanthouse.update(vacanthouse_strong_params)
		session[:image] = @vacanthouse.image
		if @vacanthouse.valid? && !params[:mail_vacanthouse][:master_madoris].blank?
			@madori_ids = params[:mail_vacanthouse]['master_madoris']
			session[:madori_ids] = @madori_ids
			render :confirm_vacanthouse
		else
			render :vacanthouse
		end
	end

	def post_vacanthouse
		@title = 'ルームシェア東京：空き室を貸したい！'
		@vacanthouse = MailVacanthouse.new
		@vacanthouse.update(vacanthouse_strong_params)
		@vacanthouse.image = session[:image]
		session[:image] = nil

		@vacanthouse.save_with_madori(session[:madori_ids])
		logger.debug @vacanthouse.inspect
		@vacanthouse = MailVacanthouse.find(@vacanthouse.id)

		InquiryMailer.confirm_vacanthouse(@vacanthouse, session[:madori_ids]).deliver
		InquiryMailer.vacanthouse(@vacanthouse, session[:madori_ids]).deliver
		session[:madori_ids] = nil

		render :post_vacanthouse
	end

private
  def desireroom_strong_params
    params.require(:mail_desireroom).permit(:name, :furigana, :age, :master_gender_id, :master_job_id, :tel, :email, :master_contact_information_id, :station, :master_commuting_time_id, :line, :area, :master_hope_rent_id, 'master_madoris[]', :master_live_term_id, :master_desired_number_id, :conditions01, :conditions02, :conditions03, :conditions04, :conditions05, :detail)
  end
  def owner_strong_params
    params.require(:mail_owner).permit(:master_owner_kubun_id, :corp_name, :name, :furigana, :email, :detail)
  end
  def mailmagazine_strong_params
    params.require(:mail_mailmagazine).permit(:email)
  end

  def contact_strong_params
    params.require(:mail_contact).permit(:corp_name, :name, :email, :detail)
  end

  def review_strong_params
    params.require(:mail_review).permit(:title, :name, :master_age_gender_id, :master_job_id, :email, :image, :master_theme_id, :detail)
  end

  def vacanthouse_strong_params
    params.require(:mail_vacanthouse).permit(:name, :master_age_id, :master_gender_id, :master_job_id, :email, :title, :image, :address, :price, :etc_price, :station, :station_time, :master_tatemono_class_id, 'master_madoris[]', :koshitsu, :master_live_term_id, :master_recruit_gender_id, :detail)
  end

end
