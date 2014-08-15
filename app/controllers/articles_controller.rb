class ArticlesController < ApplicationController
	def new
	end
	def show
		@article = Article.find(params[:id])
	end
	def create
		@article = Article.new(params[:article])

		@article.save
		redirect_to @article
	end
	def index
		@articles = Article.all
	end
	private
	  def article_params
	    params.require(:article).permit(:title, :text)
	  end
end
