class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create 
    @page = Page.new(page_params)

    if @page.save 
      flash[:notice] = "Page created successfully"
      redirect_to pages_path
    else 
      render new
    end
  end

  def edit
  end

  def update 
  end

  def delete
  end

  def destroy
  end

  private 

    def page_params
      params.require(:page).permit(:name, :visible, :position, :permalink)
    end
end
