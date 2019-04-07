class ArticlesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @articles = Article.includes(:user).order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
      if @article.save
        redirect_to root_path
      else
        render :edit
      end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
      article.update(article_params) if current_user.id == article.user_id
    redirect_to root_path
  end

  def destroy
    article = Article.find(params[:id])
      article.destroy if current_user.id == article.user_id
    redirect_to root_path
  end


private
  def article_params
    params.require(:article).permit(:title, :explain, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to index: :action unless user_signed_in?
  end
end
