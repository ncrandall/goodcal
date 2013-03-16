class UsersController < ApplicationController
  def show
    @user = User.where(:id => params[:id])
#    if signed_in?
#      if current_user.id == params[:id]
#        @user = current_user
#      else
#        redirect_to users_show_path(current_user.id)
#      end
#    else
#      flash[:error] = "You must login first"
#      redirect_to root_url
#    end
  end
end
