class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      sign_in(@user)
      current_user
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    sign_out if signed_in?
    redirect_to root_url
  end

  private 

    def sign_in(user)
      cookies.permanent[:name] = user.name
    end

    def sign_out
      cookies.delete(:name)
    end
end
