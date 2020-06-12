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

  def update
    @user = User.find params[:id]

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html  { redirect_back(fallback_location: root_path) }
        format.json { respond_with_bip(@user) }
      else
        format.html { render :action => "index" }
        format.json { respond_with_bip(@user) }
      end
    end
  end


  def destroy
    if @user = User.friendly.find(params[:id]).destroy
      redirect_to :root_path
    end
  end

  private
  def user_params
      params.require(:user).permit(:status)
    end
	
end