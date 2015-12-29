class ArticlesController < ApplicationController
	def new
	end

	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def create
		# render plain: params[:article].inspect
		@article = Article.new(article_args)

		@article.save
		redirect_to @article
	end

	private
		def article_args
			params.require(:article).permit(:title, :text)
		end


end
