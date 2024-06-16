class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news_item = News.find(params[:id])
  end

  def new
    @news_item = News.new
  end

  def create
    @news_item = News.new(news_params)

    if @news_item.save
      flash[:notice] = 'Notícia criada com sucesso.'
      redirect_to @news_item
    else
      render :new
    end
  end

  private

  def news_params
    params.require(:news).permit(:title, :content)
  end
end
