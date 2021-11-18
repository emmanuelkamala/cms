class HomeController < ApplicationController
  def index
    name = params[:name]
    @user_id = params[:user_id]
    @full_name = name
  end
end
