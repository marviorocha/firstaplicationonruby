class PagesController < ApplicationController

  def home

  end


  def about

  end

  def blog
    @article = Article.paginate(:page => params[:page], :per_page => 3)


  end

  def view
    @article = Article.find(params[:id])
  end

end
#end class to Welcome Template
