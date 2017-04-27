class ArticlesController < ApplicationController
  
  before_action :find_article, only: [:show, :edit, :update]

  def index
    @articles = Article.all
    @categories = Category.all
  end

  def new
    @article = Article.new
  end

  def create
    #this is rails magic! (adding ArticleCategory association into join table)
    #The permit! is needed to require the category_ids
    @article = Article.new(article_params)
    if @article.save
      #redirect_to "/articles/#{@article.id}"
      redirect_to article_path(@article) #<---using "Prefix"
    else
      render 'new'
    end
  end

  def show
    #render 'show' #<< don't need this
  end

  def edit
  end

  def update
    if @article.update(params.require(:article).permit(:title, :body))
      #redirect_to "/articles/#{@article.id}"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private

    def article_params
      params.require(:article).permit!
    end

    def find_article
      @article = Article.find(params[:id])
    end
end
