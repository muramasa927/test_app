class Users::ArticlesController < ApplicationController
	#before_action :configure_sign_up_params, only: [:create]
	def index
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		
		redirect_to users_articles_path
	end

private
	def article_params
		params.require(:post).permit(:title, :content, :image)
	end
end
