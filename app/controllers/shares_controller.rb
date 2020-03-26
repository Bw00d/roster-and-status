class SharesController < ApplicationController
  def create
    @share = Share.new(share_params)
    @team = Team.find(@share.team_id)

    respond_to do |format|
      if @share.save
        format.html { redirect_to team_path(@team) }
        format.json { render :show, status: :created, location: @share }
      else
        format.html { redirect_to team_path(@team) }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @share = Share.find(params[:id])
    @team = Team.find(@share.team_id)

    @share.destroy
    respond_to do |format|
      format.html { redirect_to team_path(@team) }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def share_params
      params.require(:share).permit(:team_id, :user_id)
    end

end
