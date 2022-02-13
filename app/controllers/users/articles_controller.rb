class Users::ArticlesController < ApplicationController
	#before_action :configure_sign_up_params, only: [:create]
	def index
		@user = User.find(current_user.id)
		@articles = @user.articles.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def create
		@user = User.find(current_user.id)
		@article = @user.articles.new(article_params)
		@article.save!
		redirect_to users_articles_path
	end

	def edit
		@user = User.find(current_user.id)
		@article = @user.articles.find(params[:id])
	end

	def update
		@user = User.find(current_user.id)
		@article = @user.articles.find(params[:id])
		@article.update!(article_params)
		redirect_to users_articles_path
	end
	
  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "記事を削除しました"
    redirect_to users_articles_url
  end
	

private
	def article_params
		params.require(:article).permit(:title, :content, :image, :remove_image)
	end
end
