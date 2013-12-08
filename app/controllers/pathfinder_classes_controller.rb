class PathfinderClassesController < ApplicationController
  before_action :set_pathfinder_class, only: [:show, :edit, :update, :destroy]

  # GET /pathfinder_classes
  # GET /pathfinder_classes.json
  def index
    @pathfinder_classes = PathfinderClass.all
  end

  # GET /pathfinder_classes/1
  # GET /pathfinder_classes/1.json
  def show
  end

  # GET /pathfinder_classes/new
  def new
    @pathfinder_class = PathfinderClass.new
  end

  # GET /pathfinder_classes/1/edit
  def edit
  end

  # POST /pathfinder_classes
  # POST /pathfinder_classes.json
  def create
    @pathfinder_class = PathfinderClass.new(pathfinder_class_params)

    respond_to do |format|
      if @pathfinder_class.save
        format.html { redirect_to @pathfinder_class, notice: 'Pathfinder class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pathfinder_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @pathfinder_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pathfinder_classes/1
  # PATCH/PUT /pathfinder_classes/1.json
  def update
    respond_to do |format|
      if @pathfinder_class.update(pathfinder_class_params)
        format.html { redirect_to @pathfinder_class, notice: 'Pathfinder class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pathfinder_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pathfinder_classes/1
  # DELETE /pathfinder_classes/1.json
  def destroy
    @pathfinder_class.destroy
    respond_to do |format|
      format.html { redirect_to pathfinder_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathfinder_class
      @pathfinder_class = PathfinderClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pathfinder_class_params
      params.require(:pathfinder_class).permit(:class_name, :class_description, :hit_dice, :weapon_proficiencies, :armor_proficiencies, :class_skills, :class_abilities, :base_attack_bonuses, :base_saves)
    end
end
