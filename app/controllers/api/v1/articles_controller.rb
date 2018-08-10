class Api::V1::ArticlesController < ApiController
  before_action :set_article, only: [:show, :update, :destroy]
  def index
    @articles = Article.all
  end
  
  def show
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      render :show
    else
      render json: {data: article.errors, status: :unprocessable_entity }
    end
  end
  
  def update
    if @article.update
      render :show
    else
      render json: {data: article.errors, status: :unprocessable_entity }
    end
  end
  
  def destroy
    if @article.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end
  
  private
  def article_params
    params.permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
  
end