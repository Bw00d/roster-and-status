class TraineesController < ApplicationController
  def create
    @trainee = Trainee.new(trainee_params)

    respond_to do |format|
      if @trainee.save
        format.html { redirect_to teams_path }
        format.json { render :show, status: :created, location: @trainee }
      else
        format.html { redirect_to teams_path }
        format.json { render json: @trainee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trainee = Trainee.find(params[:id])
    @team = Team.find(@trainee.team_id)

    @trainee.destroy
    respond_to do |format|
      format.html { redirect_to team_path(@team) }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trainee_params
      params.require(:trainee).permit(:team_id, :user_id, :complexity)
    end
end