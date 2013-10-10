class InquiryController < ApplicationController
	def review
		@review = MailReview.new
		render :review
	end

	def confirm_review
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
		@review = MailReview.new
		@review.update(review_strong_params)
		@review.image = session[:image]
		@review.save!

		InquiryMailer.review(@review).deliver

		render :post_review
	end

	def vacanthouse
		render :vacanthouse
	end

private
  def review_strong_params
    params.require(:mail_review).permit(:title, :name, :age_id, :job_id, :email, :image, :theme_id, :detail)
  end

end
