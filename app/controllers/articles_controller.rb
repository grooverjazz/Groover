class ArticlesController < ApplicationController
  load_and_authorize_resource

  def index
    @article = Article.all
    @association = Association.first
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = 'Het artikel is aangemaakt.'
      redirect_to articles_path
    else
      flash[:danger] = 'Er is iets fout gegaan. Probeer het opnieuw.'
      render 'new'
    end
  end

  def edit; end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(article_params)
      flash[:success] = 'Het artikel is aangepast.'
      redirect_to article_path(@article)
    else
      flash[:danger] = 'Er is iets fout gegaan. Probeer het opnieuw.'
      render 'edit'
    end
  end

  protected

  def article_params
    params.require(:article).permit(:title, :content, :cover)
  end
end
