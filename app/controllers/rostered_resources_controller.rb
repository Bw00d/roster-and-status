class RosteredResourcesController < ApplicationController
  before_action :set_rostered_resource, only: [:show, :edit, :update, :destroy]

  # GET /rostered_resources
  # GET /rostered_resources.json
  def index
    @rostered_resources = RosteredResource.all
  end

  # GET /rostered_resources/1
  # GET /rostered_resources/1.json
  def show
  end

  # GET /rostered_resources/new
  def new
    @rostered_resource = RosteredResource.new
  end

  # GET /rostered_resources/1/edit
  def edit
  end

  # POST /rostered_resources
  # POST /rostered_resources.json
  def create
    @rostered_resource = RosteredResource.new(rostered_resource_params)
    @roster = Roster.find(@rostered_resource.roster_id)
    @team = Team.find(@roster.team.id)

    respond_to do |format|
      if @rostered_resource.save
        format.html { redirect_back(fallback_location: root_path)}
        format.json { render :show, status: :created, location: @rostered_resource }
      else
        format.html { redirect_back(fallback_location: root_path)}
        format.json { render json: @rostered_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rostered_resources/1
  # PATCH/PUT /rostered_resources/1.json
  def update
    respond_to do |format|
      if @rostered_resource.update(rostered_resource_params)
        format.html { redirect_to @rostered_resource, notice: 'Rostered resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @rostered_resource }
      else
        format.html { render :edit }
        format.json { render json: @rostered_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rostered_resources/1
  # DELETE /rostered_resources/1.json
  def destroy
    @rostered_resource.destroy
    respond_to do |format|
      format.html { redirect_to rostered_resources_url, notice: 'Rostered resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rostered_resource
      @rostered_resource = RosteredResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rostered_resource_params
      params.require(:rostered_resource).permit(:user_id, :roster_id)
    end
end
