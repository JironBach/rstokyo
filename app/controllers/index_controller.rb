class IndexController < ApplicationController
	def index
		render :index
	end

	def about
		render :about
	end

	def review
		render :review
	end

	def corporate
		render :corporate
	end

	def sitemap
		render :sitemap
	end

	def link
		render :link
	end

	def privacy
		render :privacy
	end

	def blog
		render :blog
	end

end
