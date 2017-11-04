class ArticlesController < ApplicationController
before_action :authenticate_user!
before_action :set_article, only: [:edit, :update, :show, :destroy]

def index
  @article = Article.paginate(:page => params[:page], :per_page => 3)
end



def new
@article = Article.new
end

# Criar um novo article
def create

@article = Article.new(article_params)
@article.user = User.first
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
flash[:alert] = "Destroy article was successfull!"
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
