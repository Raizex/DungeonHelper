class DescriptionsController < ApplicationController
  before_action :getCharacter
  before_action :set_description, only: [:show, :edit, :update, :destroy]

  # GET /descriptions
  # GET /descriptions.json
  def index
    @descriptions = Description.all
  end

  # GET /descriptions/1
  # GET /descriptions/1.json
  def show
  end

  # GET /descriptions/new
  def new
    @description = @character.build_description
  end

  # GET /descriptions/1/edit
  def edit
  end

  # POST /descriptions
  # POST /descriptions.json
  def create
    @description = @character.build_description(description_params)

    respond_to do |format|
      if @description.save
        format.html { redirect_to character_description_path(@character), notice: 'Description was successfully updated.' }
        format.json { render action: 'show', status: :created, location: @description }
      else
        format.html { render action: 'new' }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descriptions/1
  # PATCH/PUT /descriptions/1.json
  def update
    respond_to do |format|
      if @description.update(description_params)
        format.html { redirect_to @character, notice: 'Description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.json
  def destroy
    @description.destroy
    respond_to do |format|
      # redirect back, as descriptions will always be deleted via the character
      # page
      format.html { redirect_to(:back) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description
      @description = @character.description
    end

    def getCharacter
      @character = Character.find(params[:character_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_params
      params.require(:description).permit(:name, :alignment, :player, :deity, :homeland, :gender, :height, :weight, :eyes, :hair, :character_id)
    end
end
