class ArticlesController < ApplicationController

before_action :set_article, only: [:edit, :update, :show, :destroy]

def index
  @article = Article.all
end


def new
@article = Article.new
end

# Criar um novo article
def create

@article = Article.new(article_params)
  if @article.save
   flash[:notice] = "Article create with Success"
     redirect_to article_path(@article)
  else
    render 'new'
  end
end # End Create

def show

end #End Show Article


def edit

end #End Edit

def update


  if @article.update(article_params)
    flash[:notice] = "Article edited with sucess"
    redirect_to article_path(@article)
  else
    render "edit"
  end
end #End update article

def destroy


@article.destroy
flash[:notice] = "Destroy article was successfull!"
redirect_to articles_path

end # End destroy article

private

def set_article
    @article = Article.find(params[:id])
end

def article_params
  params.require(:article).permit(:title, :description)
end


end