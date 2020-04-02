class UsersController < ApplicationController
	# include SkipAuthorization
	helper UsersHelper

	def index
    @users = User.all.order(:first_name)
		end

	def show
		@user = User.friendly.find(params[:id])
		@blurbs = @user.blurbs
	end

  def destroy
    if @user = User.friendly.find(params[:id]).destroy
      redirect_to :root_path
    end
  end
	
end