class PagesController < ApplicationController

  def home
 
  end

  def about

  end

  def blog
   @article = Article.all

  end

end
#end class to Welcome Template
