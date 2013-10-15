class InquiryController < ApplicationController
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

		InquiryMailer.review(@review).deliver

		render :post_review
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
  def review_strong_params
    params.require(:mail_review).permit(:title, :name, :master_age_gender_id, :master_job_id, :email, :image, :master_theme_id, :detail)
  end

  def vacanthouse_strong_params
    params.require(:mail_vacanthouse).permit(:name, :master_age_id, :master_gender_id, :master_job_id, :email, :title, :image, :address, :price, :etc_price, :station, :station_time, :master_tatemono_class_id, 'master_madoris[]', :koshitsu, :master_live_term_id, :master_recruit_gender_id, :detail)
  end

end
