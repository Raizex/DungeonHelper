class ClassLevelsController < ApplicationController
  before_action :set_class_level, only: [:show, :edit, :update, :destroy]

  # GET /class_levels
  # GET /class_levels.json
  def index
    @class_levels = ClassLevel.all
  end

  # GET /class_levels/1
  # GET /class_levels/1.json
  def show
  end

  # GET /class_levels/new
  def new
    @class_level = ClassLevel.new
  end

  # GET /class_levels/1/edit
  def edit
  end

  # POST /class_levels
  # POST /class_levels.json
  def create
    @class_level = ClassLevel.new(class_level_params)

    respond_to do |format|
      if @class_level.save
        format.html { redirect_to @class_level, notice: 'Class level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @class_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @class_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_levels/1
  # PATCH/PUT /class_levels/1.json
  def update
    respond_to do |format|
      if @class_level.update(class_level_params)
        format.html { redirect_to @class_level, notice: 'Class level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @class_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_levels/1
  # DELETE /class_levels/1.json
  def destroy
    @class_level.destroy
    respond_to do |format|
      format.html { redirect_to class_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_level
      @class_level = ClassLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_level_params
      params.require(:class_level).permit(:level, :class_id, :character_id)
    end
end
