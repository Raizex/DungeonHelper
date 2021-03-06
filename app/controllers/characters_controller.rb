class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy, :set_race, :set_class, :choose_feats]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @race = Race.find(@character.race_id)
    feat_assignments = @character.feat_assignments
    @feats = []
    feat_assignments.each do |assignment|
      @feats << Feat.find(assignment.feat_id)
    end
    @attributes = @character.attribute_list
    @class = PathfinderClass.find(@character.class_id)
    @base_attack = @class.baseAttackBonuses[1][0]
    @saves = @class.baseSaves[1]
    @description = @character.description
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    @character.user = current_user

    respond_to do |format|
      if @character.save
        format.html { redirect_to new_character_description_path(@character), notice: 'Character was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character }
      else
        format.html { render action: 'new' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        if params["UpdateCharacter"] == "Update Race"
          format.html { redirect_to  set_class_character_path(@character)}
        elsif params["UpdateCharacter"] == "Update Class"
          format.html { redirect_to  new_character_feat_assignment_path(@character)}
        else
          format.html { redirect_to character_path, notice: 'Character was successfully updated.' }
        end
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.json { head :no_content }
    end
  end

  def set_race
  end

  def set_class
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :summary, :campaign, :user_id, :race_id, :class_id)
    end
end
