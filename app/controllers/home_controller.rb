class HomeController < ApplicationController
  #before_action :authenticate_user!, only: :index

  def index
    @users = User.all
    @user = User.find(1)
  end
end
