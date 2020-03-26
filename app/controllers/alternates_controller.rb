class AlternatesController < ApplicationController
  def create
    @alternate = Alternate.new(alternate_params)
    @team = Team.find(@alternate.team_id)

    respond_to do |format|
      if @alternate.save
        format.html { redirect_to team_path(@team) }
        format.json { render :show, status: :created, location: @alternate }
      else
        format.html { redirect_to team_path(@team) }
        format.json { render json: @alternate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @alternate = Alternate.find(params[:id])
    @team = Team.find(@alternate.team_id)

    @alternate.destroy
    respond_to do |format|
      format.html { redirect_to team_path(@team) }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def alternate_params
      params.require(:alternate).permit(:team_id, :user_id)
    end

end
