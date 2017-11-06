class CategoriesController < ApplicationController

before_action :authenticate_user!
before_action :set_category, only: [:destroy, :show, :update, :edit]


def index
  #index page for categories
  @category = Category.paginate(:page => params[:page], :per_page => 5)

end

def destroy
  if @category.destroy
      flash[:alert] = "Category has deleted with successfull"
      redirect_to categories_path
  end
end

def new
  #new page for categories
@category = Category.new
end

def create

  @category = Category.new(categories_params)

  if @category.save
    flash[:notice] = "Category salve with successfull"
    redirect_to categories_path
  end

end

def edit
  #edit page for categories
end

def update
 if @category.update(categories_params)
   flash[:notice] = "Update the category has successfull!"
   redirect_to categories_path(@category)
  else
   render "edit"
  end
end

#private params categories
private

def set_category
  @category = Category.find(params[:id])
end

def categories_params
params.require(:category).permit(:name)
end


end
