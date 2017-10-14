class ArticlesController < ApplicationController

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
  @article = Article.find(params[:id])
end #End Show Article


def edit
  @article = Article.find(params[:id])
end #End Edit

def update
   @article = Article.find(params[:id])

  if @article.update(article_params)
    flash[:notice] = "Article edited with sucess"
    redirect_to article_path(@article)
  else
    render "edit"
  end
end #End update article

def destroy

@article = Article.find(params[:id])
@article.destroy
flash[:notice] = "Destroy article was successfull!"
redirect_to articles_path

end # End destroy article

def article_params
  params.require(:article).permit(:title, :description)
end


end
