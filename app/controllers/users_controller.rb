class UsersController < ApplicationController
  #before_action  :authenticate_user!  


  def show 

    @user = user.find(params[:id])
    @students = User.where(role: 'student') if @user.role == 'teacher'
    @post = Post.where(user_id: @user.id).order('created_at desc')   
    

  end

    
  def new
    @user = users.new
  end
end
