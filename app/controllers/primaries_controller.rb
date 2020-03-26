class PrimariesController < ApplicationController
  def create
    @primary = Primary.new(primary_params)
    @team = Team.find(@primary.team_id)

    respond_to do |format|
      if @primary.save
        format.html { redirect_to teams_path(@team) }
        format.json { render :show, status: :created, location: @primary }
      else
        format.html { redirect_to :back }
        format.json { render json: @primary.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def primary_params
      params.require(:primary).permit(:team_id, :user_id)
    end

end
