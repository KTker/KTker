class UsersController < ApplicationController

  def new
  @user = User.new
end

def create
  @user = User.new(post_params)
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

private

def post_params
  	params.require(:user).permit(:email,:password, :password_confirmation)
    # attr_accessible :email, :password, :password_confirmation
end
end
